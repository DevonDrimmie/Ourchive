import { useState } from "react";
import { useParams } from "react-router-dom";
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
import {
  Dialog,
  DialogContent,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/dialog";
import { Input } from "@/components/ui/input";
import { Button } from "@/components/ui/button";
import { useTopFours } from "@/lib/hooks/useTopFours";
import { useProfiles, useCollection } from "@/lib/hooks/useEntries";
import { useAuth } from "@/lib/hooks/useAuth";
import { useUpdateProfile } from "@/lib/hooks/useProfile";
import type { MediaType, Entry, Media } from "@/types";
import { Loader2, Camera } from "lucide-react";
import { ProfileMediaTypeNav } from "@/components/profile/ProfileMediaTypeNav";

const mediaTypes: MediaType[] = ["movie", "tv", "book", "record"];

/** Order of Top 4 blocks on profile home */
const topFourOrder: MediaType[] = ["movie", "book", "record", "tv"];

export function ProfilePage() {
  const { id } = useParams<{ id: string }>();
  const { user } = useAuth();
  const { data: profiles, isLoading: profilesLoading } = useProfiles();
  const { data: topFours, isLoading: topFoursLoading } = useTopFours(id!);
  const { data: allEntries } = useCollection({ userId: id });
  const updateProfile = useUpdateProfile();

  const [avatarDialogOpen, setAvatarDialogOpen] = useState(false);
  const [avatarUrl, setAvatarUrl] = useState("");

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
      acc[type] = (allEntries ?? []).filter(
        (e: Entry & { media: Media }) => e.media?.media_type === type
      ).length;
      return acc;
    },
    {} as Record<MediaType, number>
  );

  const tabEntries = (allEntries ?? []) as EntryWithMedia[];

  const handleAvatarSave = () => {
    const url = avatarUrl.trim() || null;
    updateProfile.mutate(
      { id: id!, avatar_url: url },
      {
        onSuccess: () => {
          setAvatarDialogOpen(false);
        },
      }
    );
  };

  const openAvatarDialog = () => {
    setAvatarUrl(profile.avatar_url ?? "");
    setAvatarDialogOpen(true);
  };

  return (
    <PageShell className="max-w-2xl">
      <div className="flex items-center gap-4">
        <button
          onClick={isOwner ? openAvatarDialog : undefined}
          className={isOwner ? "relative group cursor-pointer" : ""}
          disabled={!isOwner}
        >
          <Avatar className="h-16 w-16">
            {profile.avatar_url && (
              <AvatarImage src={profile.avatar_url} alt={profile.display_name} />
            )}
            <AvatarFallback className="text-xl bg-primary/20 text-primary">
              {initials}
            </AvatarFallback>
          </Avatar>
          {isOwner && (
            <div className="absolute inset-0 flex items-center justify-center rounded-full bg-black/50 opacity-0 group-hover:opacity-100 transition-opacity">
              <Camera className="h-5 w-5 text-white" />
            </div>
          )}
        </button>
        <div className="min-w-0">
          <h1 className="text-2xl font-bold tracking-tight truncate">
            {profile.display_name}
          </h1>
          <p className="text-sm text-muted-foreground">
            {isOwner ? "Your profile" : `${profile.display_name}'s profile`}
          </p>
        </div>
      </div>

      <Dialog open={avatarDialogOpen} onOpenChange={setAvatarDialogOpen}>
        <DialogContent className="sm:max-w-md">
          <DialogHeader>
            <DialogTitle>Profile Picture</DialogTitle>
          </DialogHeader>

          <div className="flex flex-col items-center gap-4">
            <Avatar className="h-24 w-24">
              {avatarUrl.trim() ? (
                <AvatarImage
                  src={avatarUrl.trim()}
                  alt="Preview"
                  onError={(e) => {
                    e.currentTarget.style.display = "none";
                  }}
                />
              ) : null}
              <AvatarFallback className="text-2xl bg-primary/20 text-primary">
                {initials}
              </AvatarFallback>
            </Avatar>

            <Input
              value={avatarUrl}
              onChange={(e) => setAvatarUrl(e.target.value)}
              placeholder="Paste an image URL..."
              autoFocus
            />

            <p className="text-xs text-muted-foreground text-center">
              Use any public image URL — Gravatar, Discord, social media, etc.
            </p>

            <div className="flex w-full gap-2">
              {profile.avatar_url && (
                <Button
                  variant="outline"
                  className="flex-1"
                  onClick={() => {
                    setAvatarUrl("");
                    updateProfile.mutate(
                      { id: id!, avatar_url: null },
                      { onSuccess: () => setAvatarDialogOpen(false) }
                    );
                  }}
                  disabled={updateProfile.isPending}
                >
                  Remove
                </Button>
              )}
              <Button
                className="flex-1"
                onClick={handleAvatarSave}
                disabled={updateProfile.isPending}
              >
                {updateProfile.isPending ? (
                  <Loader2 className="h-4 w-4 animate-spin" />
                ) : (
                  "Save"
                )}
              </Button>
            </div>
          </div>
        </DialogContent>
      </Dialog>

      <ProfileMediaTypeNav
        className="mt-4"
        userId={id!}
        countByType={countByType}
      />

      <Separator className="my-6" />

      <div className="space-y-6">
        {topFourOrder.map((type) => (
          <TopFourGrid
            key={type}
            mediaType={type}
            entries={(topFours ?? []).filter((e) => e.media_type === type)}
            userId={id!}
            editable={isOwner}
          />
        ))}
      </div>

      <Tabs defaultValue="stats" className="mt-8">
        <TabsList className="w-full justify-start">
          <TabsTrigger value="stats">Stats</TabsTrigger>
          <TabsTrigger value="reviews">Reviews</TabsTrigger>
          <TabsTrigger value="wanted">Wanted</TabsTrigger>
        </TabsList>

        <TabsContent value="stats" className="mt-4">
          <MediaCollectionInsights entries={tabEntries} emptyLabel="items" />
        </TabsContent>

        <TabsContent value="reviews" className="mt-4">
          <CollectionReviewsList entries={tabEntries} showMediaTypeBadge />
        </TabsContent>

        <TabsContent value="wanted" className="mt-4">
          <CollectionWantList entries={tabEntries} showMediaTypeBadge />
        </TabsContent>
      </Tabs>
    </PageShell>
  );
}
