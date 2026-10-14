import { Plus } from "lucide-react";
import { Badge } from "@/components/ui/badge";
import { CoverImage } from "@/components/media/CoverImage";
import { MEDIA_TYPE_ICONS } from "@/components/media/mediaTypeIcons";
import type { OmniResult } from "@/lib/hooks/useOmniSearch";
import type { EntryStatus } from "@/types";
import { byCoverShape, getMediaSubtitle } from "@/lib/media";
import { cn } from "@/lib/utils";

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

export function OmniResultRow({
  result,
  onSelect,
  showCover = false,
}: {
  result: OmniResult;
  onSelect: (result: OmniResult) => void;
  showCover?: boolean;
}) {
  const Icon = MEDIA_TYPE_ICONS[result.media_type];
  const subtitle = getMediaSubtitle(result, { first: true });

  return (
    <button
      type="button"
      onClick={() => onSelect(result)}
      className="flex w-full items-center gap-2.5 px-3 py-2 text-left transition-colors hover:bg-accent focus-visible:bg-accent focus-visible:outline-none"
    >
      {showCover ? (
        <CoverImage
          src={result.cover_url}
          alt=""
          mediaType={result.media_type}
          className={cn(
            "shrink-0 rounded-[3px]",
            byCoverShape(result.media_type, { portrait: "h-12 w-8", square: "h-10 w-10" })
          )}
        />
      ) : (
        <Icon className="h-3.5 w-3.5 shrink-0 text-muted-foreground" />
      )}

      <div className="min-w-0 flex-1">
        <div className="flex items-baseline gap-1.5">
          <span className="truncate text-sm font-medium">{result.title}</span>
          {result.year && (
            <span className="shrink-0 text-xs text-muted-foreground">{result.year}</span>
          )}
        </div>
        {(subtitle || showCover) && (
          <p className="flex items-center gap-1 truncate text-xs text-muted-foreground">
            {showCover && <Icon className="h-3 w-3 shrink-0" />}
            <span className="truncate">{subtitle}</span>
          </p>
        )}
      </div>

      <div className="hidden shrink-0 items-center gap-1 sm:flex">
        {result.userStatuses && result.userStatuses.length > 0 ? (
          result.userStatuses.map((s) => (
            <Badge
              key={s.userId}
              variant="outline"
              className={cn(
                "h-5 gap-0.5 whitespace-nowrap px-1.5 py-0 text-[10px]",
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
