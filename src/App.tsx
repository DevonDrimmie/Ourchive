import { BrowserRouter, Routes, Route, Navigate } from "react-router-dom";
import { QueryClient, QueryClientProvider } from "@tanstack/react-query";
import { TooltipProvider } from "@/components/ui/tooltip";
import { isSupabaseConfigured } from "@/lib/supabase";
import { AuthProvider, useAuth } from "@/lib/hooks/useAuth";
import { Header } from "@/components/layout/Header";
import { LoginPage } from "@/pages/Login";
import { HomePage } from "@/pages/Home";
import { SearchPage } from "@/pages/Search";
import { MediaDetailPage } from "@/pages/MediaDetail";
import { CollectionPage } from "@/pages/Collection";
import { ProfilePage } from "@/pages/Profile";
import { MediaDashboardPage } from "@/pages/MediaDashboard";
import { SignUpPage } from "@/pages/SignUp";
import { Loader2 } from "lucide-react";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";

const queryClient = new QueryClient({
  defaultOptions: {
    queries: {
      retry: 1,
      refetchOnWindowFocus: false,
    },
  },
});

function SetupPage() {
  return (
    <div className="flex min-h-screen items-center justify-center px-4">
      <Card className="w-full max-w-lg border-border/50">
        <CardHeader className="text-center">
          <CardTitle className="text-2xl font-bold tracking-tight">
            Ourchive
          </CardTitle>
          <p className="text-sm text-muted-foreground">
            Almost there — Supabase needs to be configured
          </p>
        </CardHeader>
        <CardContent className="space-y-4 text-sm">
          <p className="text-muted-foreground">
            Add the following to your{" "}
            <code className="rounded bg-muted px-1.5 py-0.5 font-mono text-xs">
              .env.local
            </code>{" "}
            file, then restart the dev server:
          </p>
          <pre className="overflow-x-auto rounded-lg bg-muted p-4 font-mono text-xs leading-relaxed">
{`VITE_SUPABASE_URL=https://your-project.supabase.co
VITE_SUPABASE_ANON_KEY=your-anon-key`}
          </pre>
          <p className="text-muted-foreground">
            Find these values in your{" "}
            <a
              href="https://supabase.com/dashboard"
              target="_blank"
              rel="noreferrer"
              className="text-primary underline underline-offset-4"
            >
              Supabase dashboard
            </a>{" "}
            under Settings → API.
          </p>
        </CardContent>
      </Card>
    </div>
  );
}

function ProtectedRoute({ children }: { children: React.ReactNode }) {
  const { user, loading } = useAuth();

  if (loading) {
    return (
      <div className="flex min-h-screen items-center justify-center">
        <Loader2 className="h-6 w-6 animate-spin text-muted-foreground" />
      </div>
    );
  }

  if (!user) {
    return <Navigate to="/login" replace />;
  }

  return <>{children}</>;
}

function AppRoutes() {
  const { user, loading } = useAuth();

  if (loading) {
    return (
      <div className="flex min-h-screen items-center justify-center">
        <Loader2 className="h-6 w-6 animate-spin text-muted-foreground" />
      </div>
    );
  }

  return (
    <Routes>
      <Route
        path="/login"
        element={user ? <Navigate to="/" replace /> : <LoginPage />}
      />
      <Route
        path="/signup"
        element={user ? <Navigate to="/" replace /> : <SignUpPage />}
      />
      <Route
        path="/"
        element={
          <ProtectedRoute>
            <Header />
            <HomePage />
          </ProtectedRoute>
        }
      />
      <Route
        path="/movies"
        element={
          <ProtectedRoute>
            <Header />
            <HomePage />
          </ProtectedRoute>
        }
      />
      <Route
        path="/tv"
        element={
          <ProtectedRoute>
            <Header />
            <HomePage />
          </ProtectedRoute>
        }
      />
      <Route
        path="/books"
        element={
          <ProtectedRoute>
            <Header />
            <HomePage />
          </ProtectedRoute>
        }
      />
      <Route
        path="/records"
        element={
          <ProtectedRoute>
            <Header />
            <HomePage />
          </ProtectedRoute>
        }
      />
      <Route
        path="/search"
        element={
          <ProtectedRoute>
            <Header />
            <SearchPage />
          </ProtectedRoute>
        }
      />
      <Route
        path="/media/:id"
        element={
          <ProtectedRoute>
            <Header />
            <MediaDetailPage />
          </ProtectedRoute>
        }
      />
      <Route
        path="/collection"
        element={
          <ProtectedRoute>
            <Header />
            <CollectionPage />
          </ProtectedRoute>
        }
      />
      <Route
        path="/collection/movies"
        element={
          <ProtectedRoute>
            <Header />
            <CollectionPage />
          </ProtectedRoute>
        }
      />
      <Route
        path="/collection/tv"
        element={
          <ProtectedRoute>
            <Header />
            <CollectionPage />
          </ProtectedRoute>
        }
      />
      <Route
        path="/collection/books"
        element={
          <ProtectedRoute>
            <Header />
            <CollectionPage />
          </ProtectedRoute>
        }
      />
      <Route
        path="/collection/records"
        element={
          <ProtectedRoute>
            <Header />
            <CollectionPage />
          </ProtectedRoute>
        }
      />
      <Route
        path="/profile/:id"
        element={
          <ProtectedRoute>
            <Header />
            <ProfilePage />
          </ProtectedRoute>
        }
      />
      <Route
        path="/profile/:id/:type"
        element={
          <ProtectedRoute>
            <Header />
            <MediaDashboardPage />
          </ProtectedRoute>
        }
      />
      <Route path="*" element={<Navigate to="/" replace />} />
    </Routes>
  );
}

export default function App() {
  if (!isSupabaseConfigured) {
    return <SetupPage />;
  }

  return (
    <QueryClientProvider client={queryClient}>
      <BrowserRouter>
        <TooltipProvider>
          <AuthProvider>
            <AppRoutes />
          </AuthProvider>
        </TooltipProvider>
      </BrowserRouter>
    </QueryClientProvider>
  );
}
