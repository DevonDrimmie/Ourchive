import { useState, useRef, useEffect, useCallback } from "react";
import { Link, useLocation, useNavigate } from "react-router-dom";
import {
  LogOut,
  User,
  Library,
  Menu,
  Search,
  BookText,
  Loader2,
  CirclePlus,
  FileUp,
  KeyRound,
  X,
} from "lucide-react";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Avatar, AvatarFallback, AvatarImage } from "@/components/ui/avatar";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import { Sheet, SheetContent, SheetTrigger } from "@/components/ui/sheet";
import { ChangePasswordDialog } from "@/components/auth/ChangePasswordDialog";
import { EntryDialog } from "@/components/entry/EntryDialog";
import { LogDialog } from "@/components/entry/LogDialog";
import { OmniResultRow } from "@/components/search/OmniResultRow";
import { useAuth } from "@/lib/hooks/useAuth";
import { useProfiles } from "@/lib/hooks/useEntries";
import { useOmniSearch } from "@/lib/hooks/useOmniSearch";
import type { OmniResult } from "@/lib/hooks/useOmniSearch";
import { cn } from "@/lib/utils";
import { usePageWidthClass } from "./PageShell";

/** Collapsed to an icon; expands into the omni-search input in the space before the header actions. */
function HeaderSearch({
  open,
  onOpenChange,
}: {
  open: boolean;
  onOpenChange: (open: boolean) => void;
}) {
  const [query, setQuery] = useState("");
  const { data: results, isLoading } = useOmniSearch(query);
  const navigate = useNavigate();
  const { pathname } = useLocation();
  const containerRef = useRef<HTMLDivElement>(null);
  const inputRef = useRef<HTMLInputElement>(null);

  const close = useCallback(() => {
    setQuery("");
    onOpenChange(false);
  }, [onOpenChange]);

  useEffect(() => {
    if (open) inputRef.current?.focus();
  }, [open]);

  useEffect(() => {
    close();
  }, [pathname, close]);

  useEffect(() => {
    if (!open) return;
    function handlePointerDown(e: MouseEvent) {
      if (!containerRef.current?.contains(e.target as Node)) close();
    }
    document.addEventListener("mousedown", handlePointerDown);
    return () => document.removeEventListener("mousedown", handlePointerDown);
  }, [open, close]);

  const handleSelect = (result: OmniResult) => {
    if (result.existingMediaId) {
      navigate(`/media/${result.existingMediaId}`);
    } else {
      navigate("/search", { state: { prefill: result } });
    }
    close();
  };

  const goToFullSearch = () => {
    navigate(`/search?q=${encodeURIComponent(query)}`);
    close();
  };

  const showDropdown = open && query.trim().length >= 2;

  return (
    <div
      ref={containerRef}
      className={cn(
        "relative ml-auto flex min-w-0 justify-end transition-[width] duration-300 ease-out",
        open ? "w-full max-w-md" : "w-8"
      )}
    >
      {open ? (
        <>
          <Search className="absolute left-2.5 top-1/2 h-3.5 w-3.5 -translate-y-1/2 text-muted-foreground" />
          <Input
            ref={inputRef}
            value={query}
            onChange={(e) => setQuery(e.target.value)}
            onKeyDown={(e) => {
              if (e.key === "Escape") close();
              if (e.key === "Enter" && query.trim().length >= 2) goToFullSearch();
            }}
            placeholder="Search movies, books, records, games..."
            className="h-8 border-border/50 bg-muted/50 pl-8 pr-8 text-sm focus-visible:bg-background"
          />
          <button
            type="button"
            onClick={close}
            aria-label="Close search"
            className="absolute right-2 top-1/2 -translate-y-1/2 text-muted-foreground hover:text-foreground"
          >
            {isLoading && query.trim().length >= 2 ? (
              <Loader2 className="h-3.5 w-3.5 animate-spin" />
            ) : (
              <X className="h-3.5 w-3.5" />
            )}
          </button>
        </>
      ) : (
        <Button
          variant="ghost"
          size="icon"
          className="h-8 w-8"
          aria-label="Search"
          onClick={() => onOpenChange(true)}
        >
          <Search className="h-4 w-4" />
        </Button>
      )}

      {showDropdown && (
        <div className="absolute top-full left-0 right-0 z-50 mt-1 overflow-hidden rounded-lg border border-border bg-popover shadow-lg">
          {results && results.length > 0 ? (
            <div className="max-h-80 divide-y divide-border/50 overflow-y-auto">
              {results.map((r) => (
                <OmniResultRow
                  key={`${r.external_source}-${r.external_id}`}
                  result={r}
                  onSelect={handleSelect}
                />
              ))}
            </div>
          ) : !isLoading ? (
            <p className="px-3 py-4 text-center text-sm text-muted-foreground">
              No results found
            </p>
          ) : null}

          <button
            type="button"
            onClick={goToFullSearch}
            className="flex w-full items-center justify-center gap-1.5 border-t border-border/50 px-3 py-2 text-xs text-muted-foreground transition-colors hover:bg-accent"
          >
            <Search className="h-3 w-3" />
            Full search for "{query}"
          </button>
        </div>
      )}
    </div>
  );
}

function MobileNavLinks({ onClick }: { onClick?: () => void }) {
  const location = useLocation();
  const { data: profiles } = useProfiles();

  const items = [
    { to: "/collection", icon: Library, label: "Collection" },
    { to: "/import", icon: FileUp, label: "Import" },
  ];

  return (
    <>
      {items.map((item) => {
        const active = location.pathname === item.to;
        return (
          <Link
            key={item.to}
            to={item.to}
            onClick={onClick}
            className={cn(
              "flex items-center gap-2 rounded-md px-3 py-2 text-sm font-medium transition-colors",
              active
                ? "bg-accent text-accent-foreground"
                : "text-muted-foreground hover:bg-accent hover:text-accent-foreground"
            )}
          >
            <item.icon className="h-4 w-4" />
            {item.label}
          </Link>
        );
      })}
      {profiles?.map((p) => {
        const profilePath = `/profile/${p.id}`;
        const active = location.pathname === profilePath;
        return (
          <Link
            key={p.id}
            to={profilePath}
            onClick={onClick}
            className={cn(
              "flex items-center gap-2 rounded-md px-3 py-2 text-sm font-medium transition-colors",
              active
                ? "bg-accent text-accent-foreground"
                : "text-muted-foreground hover:bg-accent hover:text-accent-foreground"
            )}
          >
            <User className="h-4 w-4" />
            {p.display_name}
          </Link>
        );
      })}
    </>
  );
}

export function Header() {
  const { user, profile, signOut } = useAuth();
  const navigate = useNavigate();
  const [changePasswordOpen, setChangePasswordOpen] = useState(false);
  const [searchOpen, setSearchOpen] = useState(false);
  const [logOpen, setLogOpen] = useState(false);
  const [logResult, setLogResult] = useState<OmniResult | null>(null);
  const [entryOpen, setEntryOpen] = useState(false);
  const pageWidthClass = usePageWidthClass();
  const initials = profile?.display_name
    ?.split(" ")
    .map((n) => n[0])
    .join("")
    .slice(0, 2)
    .toUpperCase();

  return (
    <header className="sticky top-0 z-50 border-b border-border/50 bg-background/80 backdrop-blur-xl">
      <div className={cn("mx-auto flex h-14 items-center gap-4 px-4", pageWidthClass)}>
        <div className="flex items-center gap-2 shrink-0">
          <Link
            to="/"
            className="flex items-center gap-1.5 hover:opacity-80 transition-opacity"
          >
            <svg
              xmlns="http://www.w3.org/2000/svg"
              width="20"
              height="20"
              viewBox="0 0 24 24"
              fill="none"
              stroke="currentColor"
              strokeWidth="2"
              strokeLinecap="round"
              strokeLinejoin="round"
              className="text-primary"
            >
              <path d="m16 6 4 14" />
              <path d="M12 6v14" />
              <path d="M8 8v12" />
              <path d="M4 4v16" />
            </svg>
            <span className="text-lg font-bold tracking-tight hidden sm:inline">
              Ourchive
            </span>
          </Link>
        </div>

        <HeaderSearch open={searchOpen} onOpenChange={setSearchOpen} />

        <div className="-ml-2 flex shrink-0 items-center gap-2">
          <Button
            variant="ghost"
            size="icon"
            className="h-8 w-8 text-primary hover:text-primary"
            aria-label="Log something"
            onClick={() => setLogOpen(true)}
          >
            <CirclePlus className="h-5 w-5" />
          </Button>

          <Button
            asChild
            variant="ghost"
            size="icon"
            className="h-8 w-8"
            aria-label="Collection"
          >
            <Link to="/collection">
              <BookText className="h-4 w-4" />
            </Link>
          </Button>

          <DropdownMenu>
            <DropdownMenuTrigger asChild>
              <Button variant="ghost" className="h-8 w-8 rounded-full p-0">
                <Avatar className="h-8 w-8">
                  {profile?.avatar_url && (
                    <AvatarImage
                      src={profile.avatar_url}
                      alt={profile.display_name}
                    />
                  )}
                  <AvatarFallback className="text-xs bg-primary/20 text-primary">
                    {initials}
                  </AvatarFallback>
                </Avatar>
              </Button>
            </DropdownMenuTrigger>
            <DropdownMenuContent align="end">
              <DropdownMenuItem
                onClick={() => user && navigate(`/profile/${user.id}`)}
              >
                <User className="mr-2 h-4 w-4" />
                My Profile
              </DropdownMenuItem>
              <DropdownMenuItem onClick={() => navigate("/collection")}>
                <Library className="mr-2 h-4 w-4" />
                Collection
              </DropdownMenuItem>
              <DropdownMenuItem onClick={() => navigate("/import")}>
                <FileUp className="mr-2 h-4 w-4" />
                Import
              </DropdownMenuItem>
              <DropdownMenuSeparator />
              <DropdownMenuItem onClick={() => setChangePasswordOpen(true)}>
                <KeyRound className="mr-2 h-4 w-4" />
                Change Password
              </DropdownMenuItem>
              <DropdownMenuItem
                onClick={signOut}
                className="text-destructive focus:text-destructive"
              >
                <LogOut className="mr-2 h-4 w-4" />
                Sign out
              </DropdownMenuItem>
            </DropdownMenuContent>
          </DropdownMenu>

          <ChangePasswordDialog
            open={changePasswordOpen}
            onOpenChange={setChangePasswordOpen}
          />
          <LogDialog
            open={logOpen}
            onOpenChange={setLogOpen}
            onSelect={(result) => {
              setLogResult(result);
              setEntryOpen(true);
            }}
          />
          <EntryDialog result={logResult} open={entryOpen} onOpenChange={setEntryOpen} />

          <Sheet>
            <SheetTrigger asChild>
              <Button variant="ghost" size="icon" className="md:hidden">
                <Menu className="h-5 w-5" />
              </Button>
            </SheetTrigger>
            <SheetContent side="right" className="w-64">
              <nav className="mt-8 flex flex-col gap-1">
                <MobileNavLinks />
              </nav>
            </SheetContent>
          </Sheet>
        </div>
      </div>
    </header>
  );
}
