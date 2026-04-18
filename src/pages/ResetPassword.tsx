import { useEffect, useState } from "react";
import { Link, useNavigate } from "react-router-dom";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { useAuth } from "@/lib/hooks/useAuth";
import { supabase } from "@/lib/supabase";
import { Loader2 } from "lucide-react";

/**
 * Landing page for the recovery email link.
 * Supabase places the recovery tokens in the URL hash and emits a
 * `PASSWORD_RECOVERY` event which auto-creates a temporary session.
 * From there, the user can call `auth.updateUser({ password })` to set a new one.
 */
export function ResetPasswordPage() {
  const navigate = useNavigate();
  const { updatePassword } = useAuth();

  const [ready, setReady] = useState(false);
  const [tokenError, setTokenError] = useState<string | null>(null);

  const [password, setPassword] = useState("");
  const [confirm, setConfirm] = useState("");
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [success, setSuccess] = useState(false);

  useEffect(() => {
    let unsub: (() => void) | undefined;

    const init = async () => {
      const { data } = await supabase.auth.getSession();
      if (data.session) {
        setReady(true);
        return;
      }

      const { data: sub } = supabase.auth.onAuthStateChange((event, session) => {
        if (event === "PASSWORD_RECOVERY" || (event === "SIGNED_IN" && session)) {
          setReady(true);
        }
      });
      unsub = () => sub.subscription.unsubscribe();

      window.setTimeout(() => {
        setReady((current) => {
          if (!current) {
            setTokenError(
              "This reset link is invalid or has expired. Please request a new one."
            );
          }
          return current;
        });
      }, 4000);
    };

    init();
    return () => {
      unsub?.();
    };
  }, []);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setError(null);

    if (password.length < 6) {
      setError("Password must be at least 6 characters.");
      return;
    }
    if (password !== confirm) {
      setError("Passwords don't match.");
      return;
    }

    setLoading(true);
    try {
      await updatePassword(password);
      setSuccess(true);
      window.setTimeout(() => navigate("/", { replace: true }), 1200);
    } catch (err) {
      setError(err instanceof Error ? err.message : "Failed to update password");
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="flex min-h-screen items-center justify-center px-4">
      <Card className="w-full max-w-sm border-border/50">
        <CardHeader className="text-center">
          <CardTitle className="text-2xl font-bold tracking-tight">
            Choose a new password
          </CardTitle>
          <p className="text-sm text-muted-foreground">
            Set a new password for your account.
          </p>
        </CardHeader>
        <CardContent>
          {tokenError ? (
            <div className="space-y-4 text-sm">
              <p className="text-destructive">{tokenError}</p>
              <Button asChild className="w-full" variant="outline">
                <Link to="/forgot-password">Request a new link</Link>
              </Button>
            </div>
          ) : !ready ? (
            <div className="flex items-center justify-center py-6">
              <Loader2 className="h-5 w-5 animate-spin text-muted-foreground" />
            </div>
          ) : success ? (
            <p className="text-sm text-muted-foreground text-center py-2">
              Password updated. Redirecting…
            </p>
          ) : (
            <form onSubmit={handleSubmit} className="space-y-4">
              <div className="space-y-2">
                <Label htmlFor="password">New password</Label>
                <Input
                  id="password"
                  type="password"
                  value={password}
                  onChange={(e) => setPassword(e.target.value)}
                  placeholder="••••••••"
                  required
                  autoComplete="new-password"
                  autoFocus
                />
              </div>
              <div className="space-y-2">
                <Label htmlFor="confirm">Confirm password</Label>
                <Input
                  id="confirm"
                  type="password"
                  value={confirm}
                  onChange={(e) => setConfirm(e.target.value)}
                  placeholder="••••••••"
                  required
                  autoComplete="new-password"
                />
              </div>

              {error && <p className="text-sm text-destructive">{error}</p>}

              <Button type="submit" className="w-full" disabled={loading}>
                {loading && <Loader2 className="mr-2 h-4 w-4 animate-spin" />}
                Update password
              </Button>
            </form>
          )}
        </CardContent>
      </Card>
    </div>
  );
}
