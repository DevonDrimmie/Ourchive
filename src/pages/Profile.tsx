import { useParams } from "react-router-dom";
import { PageShell } from "@/components/layout/PageShell";
import { Avatar, AvatarFallback, AvatarImage } from "@/components/ui/avatar";
import { Separator } from "@/components/ui/separator";
import { TopFourGrid } from "@/components/media/TopFourGrid";
import { useTopFours } from "@/lib/hooks/useTopFours";
import { useProfiles, useCollection } from "@/lib/hooks/useEntries";
import { useAuth } from "@/lib/hooks/useAuth";
import type { MediaType, Entry, Media } from "@/types";
import { MEDIA_TYPE_LABELS } from "@/types";
import { Loader2, Film, Tv, BookOpen, Disc3 } from "lucide-react";

const mediaTypes: MediaType[] = ["movie", "tv", "book", "record"];

const typeIcons: Record<MediaType, typeof Film> = {
  movie: Film,
  tv: Tv,
  book: BookOpen,
  record: Disc3,
};

function StatCard({
  type,
  count,
}: {
  type: MediaType;
  count: number;
}) {
  const Icon = typeIcons[type];
  return (
    <div className="flex flex-col items-center gap-1 rounded-lg bg-muted/50 px-2 py-2">
      <Icon className="h-4 w-4 text-muted-foreground" />
      <p className="text-lg font-bold leading-tight">{count}</p>
      <p className="text-[10px] text-muted-foreground">
        {MEDIA_TYPE_LABELS[type]}s
      </p>
    </div>
  );
}

export function ProfilePage() {
  const { id } = useParams<{ id: string }>();
  const { user } = useAuth();
  const { data: profiles, isLoading: profilesLoading } = useProfiles();
  const { data: topFours, isLoading: topFoursLoading } = useTopFours(id!);
  const { data: entries } = useCollection({
    userId: id,
    status: "completed",
  });

  const profile = profiles?.find((p) => p.id === id);
  const isOwner = user?.id === id;

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

  const countByType = mediaTypes.reduce(
    (acc, type) => {
      acc[type] = (entries ?? []).filter(
        (e: Entry & { media: Media }) => e.media?.media_type === type
      ).length;
      return acc;
    },
    {} as Record<MediaType, number>
  );

  return (
    <PageShell className="max-w-2xl">
      <div className="flex items-center gap-4">
        <Avatar className="h-16 w-16">
          {profile.avatar_url && (
            <AvatarImage src={profile.avatar_url} alt={profile.display_name} />
          )}
          <AvatarFallback className="text-xl bg-primary/20 text-primary">
            {initials}
          </AvatarFallback>
        </Avatar>
        <div className="min-w-0">
          <h1 className="text-2xl font-bold tracking-tight truncate">
            {profile.display_name}
          </h1>
          <p className="text-sm text-muted-foreground">
            {isOwner ? "Your profile" : `${profile.display_name}'s profile`}
          </p>
        </div>
      </div>

      <div className="mt-4 grid grid-cols-4 gap-2">
        {mediaTypes.map((type) => (
          <StatCard key={type} type={type} count={countByType[type] ?? 0} />
        ))}
      </div>

      <Separator className="my-6" />

      <div className="space-y-6">
        {mediaTypes.map((type) => (
          <TopFourGrid
            key={type}
            mediaType={type}
            entries={(topFours ?? []).filter((e) => e.media_type === type)}
            userId={id!}
            editable={isOwner}
          />
        ))}
      </div>
    </PageShell>
  );
}
