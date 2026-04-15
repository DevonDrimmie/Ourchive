import { Badge } from "@/components/ui/badge";
import { Package, Eye, Clock, Bookmark, Disc3, Monitor, Ban } from "lucide-react";
import type { EntryStatus, OwnershipStatus } from "@/types";
import { cn } from "@/lib/utils";

interface StatusBadgeProps {
  status: EntryStatus;
  ownership?: OwnershipStatus;
  className?: string;
}

const statusConfig: Record<
  EntryStatus,
  { label: string; icon: typeof Eye; variant: "default" | "secondary" | "outline" }
> = {
  want: { label: "Want", icon: Bookmark, variant: "outline" },
  consuming: { label: "In Progress", icon: Clock, variant: "secondary" },
  completed: { label: "Completed", icon: Eye, variant: "default" },
  dnf: { label: "DNF", icon: Ban, variant: "outline" },
};

const ownershipConfig: Record<
  OwnershipStatus,
  { label: string; icon: typeof Package } | null
> = {
  none: null,
  want_to_own: { label: "Want to own", icon: Package },
  physical: { label: "Physical", icon: Disc3 },
  digital: { label: "Digital", icon: Monitor },
};

export function StatusBadge({ status, ownership, className }: StatusBadgeProps) {
  const config = statusConfig[status];
  const Icon = config.icon;
  const ownConfig = ownership ? ownershipConfig[ownership] : null;

  return (
    <div className={cn("flex flex-wrap items-center gap-1", className)}>
      <Badge variant={config.variant} className="gap-1 text-xs">
        <Icon className="h-3 w-3" />
        {config.label}
      </Badge>
      {ownConfig && (
        <Badge variant="outline" className="gap-1 text-xs">
          <ownConfig.icon className="h-3 w-3" />
          {ownConfig.label}
        </Badge>
      )}
    </div>
  );
}
