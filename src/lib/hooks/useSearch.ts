import { useQuery } from "@tanstack/react-query";
import type { MediaType } from "@/types";
import { searchByType } from "@/lib/api";
import { useDebounce } from "./useDebounce";

export function useSearch(query: string, mediaType: MediaType) {
  const debouncedQuery = useDebounce(query, 400);

  return useQuery({
    queryKey: ["search", mediaType, debouncedQuery],
    queryFn: () => searchByType(debouncedQuery, mediaType),
    enabled: debouncedQuery.length >= 2,
    staleTime: 1000 * 60 * 5,
    placeholderData: (prev) => prev,
  });
}
