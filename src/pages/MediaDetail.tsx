import { useState } from "react";
import { useParams, Link, useNavigate } from "react-router-dom";
import { PageShell } from "@/components/layout/PageShell";
import { CoverImage } from "@/components/media/CoverImage";
import { RatingStars } from "@/components/media/RatingStars";
import { StatusBadge } from "@/components/media/StatusBadge";
import { EditEntryDialog } from "@/components/entry/EditEntryDialog";
import { Badge } from "@/components/ui/badge";
import { Card, CardContent } from "@/components/ui/card";
import { Separator } from "@/components/ui/separator";
import { cn } from "@/lib/utils";
import { Avatar, AvatarFallback, AvatarImage } from "@/components/ui/avatar";
import { useMediaDetail, useMediaEntries } from "@/lib/hooks/useEntries";
import { useAuth } from "@/lib/hooks/useAuth";
import { MEDIA_TYPE_LABELS, MEDIA_TYPE_VERB } from "@/types";
import type { Profile, Entry, EntryStatus, MediaType } from "@/types";
import { ArrowLeft, Loader2, Calendar, Pencil } from "lucide-react";
import { format } from "date-fns";

export function MediaDetailPage() {
  const { id } = useParams<{ id: string }>();
  const navigate = useNavigate();
  const { user } = useAuth();
  const { data: media, isLoading: mediaLoading } = useMediaDetail(id!);
  const { data: entries, isLoading: entriesLoading } = useMediaEntries(id!);
  const [editingEntry, setEditingEntry] = useState<Entry | null>(null);

  if (mediaLoading || entriesLoading) {
    return (
      <PageShell>
        <div className="flex items-center justify-center py-20">
          <Loader2 className="h-6 w-6 animate-spin text-muted-foreground" />
        </div>
      </PageShell>
    );
  }

  if (!media) {
    return (
      <PageShell>
        <p className="text-muted-foreground">Media not found</p>
      </PageShell>
    );
  }

  const subtitle =
    media.media_type === "record"
      ? (media.metadata as { artist?: string })?.artist
      : media.media_type === "book"
        ? (media.metadata as { authors?: string[] })?.authors?.join(", ")
        : undefined;

  const overview = (media.metadata as { overview?: string })?.overview;

  return (
    <PageShell>
      <Link
        to="/"
        className="mb-4 inline-flex items-center gap-1 text-sm text-muted-foreground hover:text-foreground transition-colors"
      >
        <ArrowLeft className="h-4 w-4" />
        Back
      </Link>

      <div className="flex flex-col gap-6 sm:flex-row">
        <CoverImage
          src={media.cover_url}
          alt={media.title}
          mediaType={media.media_type}
          className={
            media.media_type === "record"
              ? "h-64 w-64 shrink-0 mx-auto sm:mx-0"
              : "h-72 w-48 shrink-0 mx-auto sm:mx-0"
          }
        />

        <div className="flex-1 min-w-0 space-y-3">
          <div>
            <Badge variant="outline" className="mb-2 text-xs">
              {MEDIA_TYPE_LABELS[media.media_type]}
            </Badge>
            <h1 className="text-2xl font-bold tracking-tight break-words">
              {media.title}
            </h1>
            {subtitle && (
              <p className="mt-0.5 text-lg text-muted-foreground break-words">
                {subtitle}
              </p>
            )}
            {media.year && (
              <p className="text-sm text-muted-foreground">{media.year}</p>
            )}
          </div>

          {media.genres.length > 0 && (
            <div className="flex flex-wrap gap-1.5">
              {media.genres.map((g) => (
                <Badge key={g} variant="secondary" className="text-xs">
                  {g}
                </Badge>
              ))}
            </div>
          )}

          {overview && (
            <p className="text-sm text-muted-foreground leading-relaxed break-words">
              {overview}
            </p>
          )}
        </div>
      </div>

      <Separator className="my-6" />

      <h2 className="text-lg font-semibold mb-4">Entries</h2>

      {entries && entries.length > 0 ? (
        <div className="grid gap-4 sm:grid-cols-2">
          {entries.map(
            (entry: Entry & { profiles: Profile }) => {
              const initials = entry.profiles?.display_name
                ?.split(" ")
                .map((n: string) => n[0])
                .join("")
                .slice(0, 2)
                .toUpperCase();

              const isOwner = user?.id === entry.user_id;

              const dateLabel = entry.consumed_date
                ? format(new Date(entry.consumed_date), "MMM d, yyyy")
                : null;

              return (
                <Card
                  key={entry.id}
                  className="group relative border-border/50 gap-0 py-4"
                >
                  <CardContent className="px-4">
                    {dateLabel && (
                      <div
                        className={cn(
                          "pointer-events-none absolute right-3 top-3 flex items-center gap-1.5 text-xs text-muted-foreground transition-opacity",
                          isOwner &&
                            "group-hover:opacity-0 group-focus-within:opacity-0"
                        )}
                      >
                        <Calendar className="h-3 w-3" />
                        {dateLabel}
                      </div>
                    )}

                    {isOwner && (
                      <button
                        type="button"
                        onClick={() => setEditingEntry(entry)}
                        aria-label="Edit entry"
                        className={cn(
                          "absolute right-2.5 top-2.5 rounded-md p-1.5 text-muted-foreground hover:text-foreground hover:bg-accent transition-all",
                          dateLabel
                            ? "opacity-0 group-hover:opacity-100 group-focus-within:opacity-100 focus-visible:opacity-100"
                            : "opacity-60 hover:opacity-100"
                        )}
                      >
                        <Pencil className="h-3.5 w-3.5" />
                      </button>
                    )}

                    <div className="flex items-center gap-3 mb-3 pr-10">
                      <Link
                        to={`/profile/${entry.user_id}`}
                        className="shrink-0 hover:opacity-80 transition-opacity"
                        aria-label={entry.profiles?.display_name}
                      >
                        <Avatar className="h-9 w-9">
                          {entry.profiles?.avatar_url && (
                            <AvatarImage src={entry.profiles.avatar_url} alt={entry.profiles.display_name} />
                          )}
                          <AvatarFallback className="text-xs bg-primary/20 text-primary">
                            {initials}
                          </AvatarFallback>
                        </Avatar>
                      </Link>
                      <div className="min-w-0 flex-1">
                        <Link
                          to={`/profile/${entry.user_id}`}
                          className="text-sm font-medium hover:underline underline-offset-2"
                        >
                          {entry.profiles?.display_name}
                        </Link>
                        <p className="text-xs text-muted-foreground">
                          {MEDIA_TYPE_VERB[media.media_type as MediaType]?.[entry.status as EntryStatus]}
                        </p>
                      </div>
                    </div>

                    <StatusBadge
                      status={entry.status as EntryStatus}
                      ownership={entry.ownership}
                      mediaType={media.media_type as MediaType}
                      className="mb-2"
                    />

                    {entry.rating != null && (
                      <div className="mb-2">
                        <RatingStars rating={entry.rating} size="md" />
                      </div>
                    )}

                    {entry.review && (
                      <p className="mt-2 text-sm text-muted-foreground leading-relaxed">
                        {entry.review}
                      </p>
                    )}
                  </CardContent>
                </Card>
              );
            }
          )}
        </div>
      ) : (
        <p className="text-sm text-muted-foreground">No entries yet.</p>
      )}

      <EditEntryDialog
        entry={editingEntry}
        media={media}
        mediaType={media.media_type as MediaType}
        open={editingEntry !== null}
        onOpenChange={(open) => {
          if (!open) setEditingEntry(null);
        }}
        onMediaChanged={(newMediaId) => {
          setEditingEntry(null);
          navigate(`/media/${newMediaId}`, { replace: true });
        }}
      />
    </PageShell>
  );
}
