import { Badge } from "@/components/ui/badge";
import { Package, Eye, Clock, Bookmark } from "lucide-react";
import type { EntryStatus } from "@/types";
import { cn } from "@/lib/utils";

interface StatusBadgeProps {
  status: EntryStatus;
  owned?: boolean;
  className?: string;
}

const statusConfig: Record<
  EntryStatus,
  { label: string; icon: typeof Eye; variant: "default" | "secondary" | "outline" }
> = {
  want: { label: "Want", icon: Bookmark, variant: "outline" },
  consuming: { label: "In Progress", icon: Clock, variant: "secondary" },
  completed: { label: "Completed", icon: Eye, variant: "default" },
};

export function StatusBadge({ status, owned, className }: StatusBadgeProps) {
  const config = statusConfig[status];
  const Icon = config.icon;

  return (
    <div className={cn("flex items-center gap-1", className)}>
      <Badge variant={config.variant} className="gap-1 text-xs">
        <Icon className="h-3 w-3" />
        {config.label}
      </Badge>
      {owned && (
        <Badge variant="outline" className="gap-1 text-xs">
          <Package className="h-3 w-3" />
          Owned
        </Badge>
      )}
    </div>
  );
}
