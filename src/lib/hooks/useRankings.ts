import { useQuery, useMutation, useQueryClient } from "@tanstack/react-query";
import { supabase } from "@/lib/supabase";
import type { MediaType } from "@/types";

export interface RankingRow {
  id: string;
  user_id: string;
  media_type: MediaType;
  media_id: string;
  position: number;
}

export function useRankings(userId: string, mediaType: MediaType) {
  return useQuery({
    queryKey: ["rankings", userId, mediaType],
    queryFn: async () => {
      const { data, error } = await supabase
        .from("rankings")
        .select("*")
        .eq("user_id", userId)
        .eq("media_type", mediaType)
        .order("position", { ascending: true });

      if (error) throw error;
      return (data ?? []) as RankingRow[];
    },
    enabled: !!userId && !!mediaType,
  });
}

/**
 * Replace the entire ordered ranking list for (user, media_type).
 * Pass the desired ordered list of media IDs; positions are assigned 0..n-1.
 * Items absent from `mediaIds` are removed from the ranking.
 */
export function useSaveRankings() {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async ({
      userId,
      mediaType,
      mediaIds,
    }: {
      userId: string;
      mediaType: MediaType;
      mediaIds: string[];
    }) => {
      const { error: delError } = await supabase
        .from("rankings")
        .delete()
        .eq("user_id", userId)
        .eq("media_type", mediaType);
      if (delError) throw delError;

      if (mediaIds.length === 0) return;

      const rows = mediaIds.map((media_id, idx) => ({
        user_id: userId,
        media_type: mediaType,
        media_id,
        position: idx,
      }));

      const { error: insError } = await supabase.from("rankings").insert(rows);
      if (insError) throw insError;
    },
    onSuccess: (_, vars) => {
      queryClient.invalidateQueries({
        queryKey: ["rankings", vars.userId, vars.mediaType],
      });
    },
  });
}
