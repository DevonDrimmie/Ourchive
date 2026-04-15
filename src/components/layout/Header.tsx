import { useState, useRef, useEffect } from "react";
import { Link, useLocation, useNavigate } from "react-router-dom";
import {
  LogOut,
  User,
  Library,
  Menu,
  Search,
  Film,
  Tv,
  BookOpen,
  Disc3,
  Loader2,
  Plus,
  FileUp,
} from "lucide-react";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Badge } from "@/components/ui/badge";
import { Avatar, AvatarFallback, AvatarImage } from "@/components/ui/avatar";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import { Sheet, SheetContent, SheetTrigger } from "@/components/ui/sheet";
import { useAuth } from "@/lib/hooks/useAuth";
import { useProfiles } from "@/lib/hooks/useEntries";
import { useOmniSearch } from "@/lib/hooks/useOmniSearch";
import type { OmniResult } from "@/lib/hooks/useOmniSearch";
import type { MediaType, EntryStatus } from "@/types";
import { cn } from "@/lib/utils";

const typeIcons: Record<MediaType, typeof Film> = {
  movie: Film,
  tv: Tv,
  book: BookOpen,
  record: Disc3,
};

const statusColors: Record<EntryStatus, string> = {
  want: "bg-yellow-500/20 text-yellow-400 border-yellow-500/30",
  consuming: "bg-blue-500/20 text-blue-400 border-blue-500/30",
  completed: "bg-primary/20 text-primary border-primary/30",
  dnf: "bg-red-500/20 text-red-400 border-red-500/30",
};

const statusLabels: Record<EntryStatus, string> = {
  want: "Want",
  consuming: "In Progress",
  completed: "Done",
  dnf: "DNF",
};

function SearchResultRow({
  result,
  onClick,
}: {
  result: OmniResult;
  onClick: () => void;
}) {
  const Icon = typeIcons[result.media_type];
  const navigate = useNavigate();

  const subtitle =
    result.media_type === "record"
      ? (result.metadata as { artist?: string })?.artist
      : result.media_type === "book"
        ? (result.metadata as { authors?: string[] })?.authors?.[0]
        : undefined;

  const handleClick = () => {
    if (result.existingMediaId) {
      navigate(`/media/${result.existingMediaId}`);
    } else {
      navigate("/search", {
        state: { prefill: result },
      });
    }
    onClick();
  };

  return (
    <button
      onClick={handleClick}
      className="flex w-full items-center gap-2.5 px-3 py-2 text-left hover:bg-accent transition-colors"
    >
      <Icon className="h-3.5 w-3.5 shrink-0 text-muted-foreground" />

      <div className="min-w-0 flex-1">
        <div className="flex items-baseline gap-1.5">
          <span className="text-sm font-medium truncate">{result.title}</span>
          {result.year && (
            <span className="text-xs text-muted-foreground shrink-0">
              {result.year}
            </span>
          )}
        </div>
        {subtitle && (
          <p className="text-xs text-muted-foreground truncate">{subtitle}</p>
        )}
      </div>

      <div className="hidden sm:flex shrink-0 items-center gap-1">
        {result.userStatuses && result.userStatuses.length > 0 ? (
          result.userStatuses.map((s) => (
            <Badge
              key={s.userId}
              variant="outline"
              className={cn(
                "text-[10px] px-1.5 py-0 h-5 gap-0.5 whitespace-nowrap",
                statusColors[s.status]
              )}
            >
              {s.displayName?.split(" ")[0]}: {statusLabels[s.status]}
              {(s.ownership === "physical" || s.ownership === "digital") && " ✦"}
            </Badge>
          ))
        ) : (
          <Plus className="h-3.5 w-3.5 text-muted-foreground/40" />
        )}
      </div>
    </button>
  );
}

function OmniSearchBar() {
  const [query, setQuery] = useState("");
  const [open, setOpen] = useState(false);
  const { data: results, isLoading } = useOmniSearch(query);
  const containerRef = useRef<HTMLDivElement>(null);
  const inputRef = useRef<HTMLInputElement>(null);

  useEffect(() => {
    function handleClickOutside(e: MouseEvent) {
      if (
        containerRef.current &&
        !containerRef.current.contains(e.target as Node)
      ) {
        setOpen(false);
      }
    }
    document.addEventListener("mousedown", handleClickOutside);
    return () => document.removeEventListener("mousedown", handleClickOutside);
  }, []);

  const showDropdown = open && query.length >= 2;

  return (
    <div ref={containerRef} className="relative flex-1 min-w-0 max-w-md">
      <Search className="absolute left-2.5 top-1/2 h-3.5 w-3.5 -translate-y-1/2 text-muted-foreground" />
      <Input
        ref={inputRef}
        value={query}
        onChange={(e) => {
          setQuery(e.target.value);
          setOpen(true);
        }}
        onFocus={() => query.length >= 2 && setOpen(true)}
        placeholder="Search movies, books, records..."
        className="h-8 pl-8 pr-3 text-sm bg-muted/50 border-border/50 focus-visible:bg-background"
      />
      {isLoading && query.length >= 2 && (
        <Loader2 className="absolute right-2.5 top-1/2 h-3.5 w-3.5 -translate-y-1/2 animate-spin text-muted-foreground" />
      )}

      {showDropdown && (
        <div className="absolute top-full left-0 right-0 mt-1 overflow-hidden rounded-lg border border-border bg-popover shadow-lg z-50">
          {results && results.length > 0 ? (
            <div className="max-h-80 overflow-y-auto divide-y divide-border/50">
              {results.map((r) => (
                <SearchResultRow
                  key={`${r.external_source}-${r.external_id}`}
                  result={r}
                  onClick={() => {
                    setOpen(false);
                    setQuery("");
                  }}
                />
              ))}
            </div>
          ) : !isLoading ? (
            <p className="px-3 py-4 text-center text-sm text-muted-foreground">
              No results found
            </p>
          ) : null}

          <Link
            to={`/search?q=${encodeURIComponent(query)}`}
            onClick={() => {
              setOpen(false);
              setQuery("");
            }}
            className="flex items-center justify-center gap-1.5 border-t border-border/50 px-3 py-2 text-xs text-muted-foreground hover:bg-accent transition-colors"
          >
            <Search className="h-3 w-3" />
            Full search for "{query}"
          </Link>
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
  const initials = profile?.display_name
    ?.split(" ")
    .map((n) => n[0])
    .join("")
    .slice(0, 2)
    .toUpperCase();

  return (
    <header className="sticky top-0 z-50 border-b border-border/50 bg-background/80 backdrop-blur-xl">
      <div className="mx-auto flex h-14 max-w-5xl items-center gap-4 px-4">
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

        <div className="hidden md:flex flex-1 justify-center">
          <OmniSearchBar />
        </div>

        <div className="flex md:hidden flex-1">
          <OmniSearchBar />
        </div>

        <div className="flex items-center gap-2 shrink-0">
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
              <DropdownMenuItem
                onClick={signOut}
                className="text-destructive focus:text-destructive"
              >
                <LogOut className="mr-2 h-4 w-4" />
                Sign out
              </DropdownMenuItem>
            </DropdownMenuContent>
          </DropdownMenu>

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
