import { useParams, Link, Navigate } from "react-router-dom";
import { PageShell } from "@/components/layout/PageShell";
import { Avatar, AvatarFallback, AvatarImage } from "@/components/ui/avatar";
import { Separator } from "@/components/ui/separator";
import { TopFourGrid } from "@/components/media/TopFourGrid";
import {
  MediaCollectionInsights,
  type EntryWithMedia,
} from "@/components/media/MediaCollectionInsights";
import {
  CollectionReviewsList,
  CollectionWantList,
} from "@/components/media/CollectionTabLists";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import { ProfileMediaTypeNav } from "@/components/profile/ProfileMediaTypeNav";
import { useTopFours } from "@/lib/hooks/useTopFours";
import { useProfiles, useCollection } from "@/lib/hooks/useEntries";
import { useAuth } from "@/lib/hooks/useAuth";
import type { MediaType, Entry, Media } from "@/types";
import { MEDIA_TYPE_LABELS } from "@/types";
import { Loader2, ChevronLeft } from "lucide-react";

const ALL_MEDIA_TYPES: MediaType[] = ["movie", "tv", "book", "record"];

const slugToMediaType: Record<string, MediaType> = {
  movies: "movie",
  tv: "tv",
  books: "book",
  records: "record",
};

export function MediaDashboardPage() {
  const { id, type: typeSlug } = useParams<{ id: string; type: string }>();
  const { user } = useAuth();
  const { data: profiles, isLoading: profilesLoading } = useProfiles();
  const { data: topFours, isLoading: topFoursLoading } = useTopFours(id!);

  const mediaType = typeSlug ? slugToMediaType[typeSlug] : undefined;

  const { data: allEntries } = useCollection({ userId: id });

  const profile = profiles?.find((p) => p.id === id);
  const isOwner = user?.id === id;

  if (!mediaType) return <Navigate to={`/profile/${id}`} replace />;

  if (profilesLoading || topFoursLoading) {
    return (
      <PageShell>
        <div className="flex items-center justify-center py-20">
          <Loader2 className="h-6 w-6 animate-spin text-muted-foreground" />
        </div>
      </PageShell>
    );
  }

  if (!profile) {
    return (
      <PageShell>
        <p className="text-muted-foreground">Profile not found</p>
      </PageShell>
    );
  }

  const initials = profile.display_name
    ?.split(" ")
    .map((n) => n[0])
    .join("")
    .slice(0, 2)
    .toUpperCase();

  const entries = (allEntries ?? []).filter(
    (e: EntryWithMedia) => e.media?.media_type === mediaType
  ) as EntryWithMedia[];

  const topFourEntries = (topFours ?? []).filter(
    (e) => e.media_type === mediaType
  );

  const emptyLabel = MEDIA_TYPE_LABELS[mediaType].toLowerCase();

  const countByType = ALL_MEDIA_TYPES.reduce(
    (acc, type) => {
      acc[type] = (allEntries ?? []).filter(
        (e: Entry & { media: Media }) => e.media?.media_type === type
      ).length;
      return acc;
    },
    {} as Record<MediaType, number>
  );

  return (
    <PageShell className="max-w-2xl">
      <div className="flex items-center gap-4">
        <Link to={`/profile/${id}`}>
          <Avatar className="h-16 w-16 hover:opacity-80 transition-opacity">
            {profile.avatar_url && (
              <AvatarImage
                src={profile.avatar_url}
                alt={profile.display_name}
              />
            )}
            <AvatarFallback className="text-xl bg-primary/20 text-primary">
              {initials}
            </AvatarFallback>
          </Avatar>
        </Link>
        <div className="min-w-0">
          <div className="flex items-center gap-2">
            <Link
              to={`/profile/${id}`}
              className="hover:underline underline-offset-4"
            >
              <h1 className="text-2xl font-bold tracking-tight truncate">
                {profile.display_name}
              </h1>
            </Link>
          </div>
          <div className="flex items-center gap-1.5 text-sm text-muted-foreground">
            <ChevronLeft className="h-3.5 w-3.5" />
            <Link
              to={`/profile/${id}`}
              className="hover:text-foreground transition-colors"
            >
              Back to profile
            </Link>
          </div>
        </div>
      </div>

      <ProfileMediaTypeNav
        className="mt-4"
        userId={id!}
        countByType={countByType}
        activeMediaType={mediaType}
      />

      <div className="mt-4 flex items-baseline gap-2">
        <h2 className="text-lg font-bold">{MEDIA_TYPE_LABELS[mediaType]}s</h2>
        <span className="text-sm text-muted-foreground">
          {entries.length} in collection
        </span>
      </div>

      <Separator className="my-4" />

      <TopFourGrid
        mediaType={mediaType}
        entries={topFourEntries}
        userId={id!}
        editable={isOwner}
      />

      <Tabs defaultValue="stats" className="mt-6">
        <TabsList className="w-full justify-start">
          <TabsTrigger value="stats">Stats</TabsTrigger>
          <TabsTrigger value="reviews">Reviews</TabsTrigger>
          <TabsTrigger value="wanted">Wanted</TabsTrigger>
        </TabsList>

        <TabsContent value="stats" className="mt-4">
          <MediaCollectionInsights entries={entries} emptyLabel={emptyLabel} />
        </TabsContent>

        <TabsContent value="reviews" className="mt-4">
          <CollectionReviewsList entries={entries} />
        </TabsContent>

        <TabsContent value="wanted" className="mt-4">
          <CollectionWantList entries={entries} />
        </TabsContent>
      </Tabs>
    </PageShell>
  );
}
