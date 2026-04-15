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
