import { useQuery, useMutation, useQueryClient } from "@tanstack/react-query";
import { supabase } from "@/lib/supabase";
import type { Media, MediaType } from "@/types";

export interface TopFourEntry {
  id: string;
  user_id: string;
  media_type: MediaType;
  slot: number;
  media_id: string;
  media: Media;
}

export function useTopFours(userId: string) {
  return useQuery({
    queryKey: ["top_fours", userId],
    queryFn: async () => {
      const { data, error } = await supabase
        .from("top_fours")
        .select("*, media(*)")
        .eq("user_id", userId)
        .order("slot");

      if (error) throw error;
      return (data ?? []) as TopFourEntry[];
    },
    enabled: !!userId,
  });
}

export function useSetTopFour() {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async ({
      userId,
      mediaType,
      slot,
      mediaId,
    }: {
      userId: string;
      mediaType: MediaType;
      slot: number;
      mediaId: string;
    }) => {
      const { error } = await supabase.from("top_fours").upsert(
        {
          user_id: userId,
          media_type: mediaType,
          slot,
          media_id: mediaId,
        },
        { onConflict: "user_id,media_type,slot" }
      );

      if (error) throw error;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["top_fours"] });
    },
  });
}

/**
 * Replace the entire (user, media_type) top-four ordering with the given
 * ordered list of media IDs. Positions are assigned 1..n based on list order.
 * Items are deleted then re-inserted to avoid clashing the unique
 * (user_id, media_type, slot) constraint.
 */
export function useReorderTopFours() {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async ({
      userId,
      mediaType,
      orderedMediaIds,
    }: {
      userId: string;
      mediaType: MediaType;
      orderedMediaIds: string[];
    }) => {
      const { error: delError } = await supabase
        .from("top_fours")
        .delete()
        .eq("user_id", userId)
        .eq("media_type", mediaType);
      if (delError) throw delError;

      if (orderedMediaIds.length === 0) return;

      const rows = orderedMediaIds.slice(0, 4).map((media_id, idx) => ({
        user_id: userId,
        media_type: mediaType,
        slot: idx + 1,
        media_id,
      }));

      const { error: insError } = await supabase.from("top_fours").insert(rows);
      if (insError) throw insError;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["top_fours"] });
    },
  });
}

export function useRemoveTopFour() {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async ({
      userId,
      mediaType,
      slot,
    }: {
      userId: string;
      mediaType: MediaType;
      slot: number;
    }) => {
      const { error } = await supabase
        .from("top_fours")
        .delete()
        .eq("user_id", userId)
        .eq("media_type", mediaType)
        .eq("slot", slot);

      if (error) throw error;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["top_fours"] });
    },
  });
}
