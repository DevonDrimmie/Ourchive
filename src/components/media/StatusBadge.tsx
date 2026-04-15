import { Badge } from "@/components/ui/badge";
import { Package, Eye, Clock, Bookmark, Disc3, Monitor, Ban } from "lucide-react";
import type { EntryStatus, OwnershipStatus, MediaType } from "@/types";
import { cn } from "@/lib/utils";

interface StatusBadgeProps {
  status: EntryStatus;
  ownership?: OwnershipStatus;
  mediaType?: MediaType;
  className?: string;
}

export const statusConfig: Record<
  EntryStatus,
  { label: string; icon: typeof Eye; variant: "default" | "secondary" | "outline" }
> = {
  want: { label: "Want", icon: Bookmark, variant: "outline" },
  consuming: { label: "In Progress", icon: Clock, variant: "secondary" },
  completed: { label: "Completed", icon: Eye, variant: "default" },
  dnf: { label: "DNF", icon: Ban, variant: "outline" },
};

export const completedLabels: Partial<Record<MediaType, string>> = {
  movie: "Watched",
  tv: "Watched",
  book: "Read",
};

export const ownershipConfig: Record<
  OwnershipStatus,
  { label: string; icon: typeof Package } | null
> = {
  none: null,
  want_to_own: { label: "Want to own", icon: Package },
  physical: { label: "Physical", icon: Disc3 },
  digital: { label: "Digital", icon: Monitor },
};

export function StatusBadge({ status, ownership, mediaType, className }: StatusBadgeProps) {
  const config = statusConfig[status];
  const Icon = config.icon;
  const ownConfig = ownership ? ownershipConfig[ownership] : null;

  const hideStatus = mediaType === "record";

  const label =
    status === "completed" && mediaType
      ? completedLabels[mediaType] ?? config.label
      : config.label;

  return (
    <div className={cn("flex flex-wrap items-center gap-1", className)}>
      {!hideStatus && (
        <Badge variant={config.variant} className="gap-1 text-xs">
          <Icon className="h-3 w-3" />
          {label}
        </Badge>
      )}
      {ownConfig && (
        <Badge variant="outline" className="gap-1 text-xs">
          <ownConfig.icon className="h-3 w-3" />
          {ownConfig.label}
        </Badge>
      )}
    </div>
  );
}
