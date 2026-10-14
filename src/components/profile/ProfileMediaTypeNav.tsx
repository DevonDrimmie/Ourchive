import { Link } from "react-router-dom";
import type { MediaType } from "@/types";
import { MEDIA_TYPES, MEDIA_TYPE_PLURAL_LABELS, MEDIA_TYPE_SLUGS } from "@/types";
import { cn } from "@/lib/utils";
import { MEDIA_TYPE_ICONS } from "@/components/media/mediaTypeIcons";

export function ProfileMediaTypeNav({
  userId,
  countByType,
  activeMediaType,
  className,
}: {
  userId: string;
  countByType: Record<MediaType, number>;
  activeMediaType?: MediaType;
  className?: string;
}) {
  return (
    <div className={cn("grid grid-cols-4 gap-2", className)}>
      {MEDIA_TYPES.map((type) => {
        const Icon = MEDIA_TYPE_ICONS[type];
        const active = activeMediaType === type;
        return (
          <Link
            key={type}
            to={`/profile/${userId}/${MEDIA_TYPE_SLUGS[type]}`}
            className={cn(
              "flex flex-col items-center gap-1 rounded-lg px-2 py-2 transition-colors",
              active
                ? "bg-accent text-accent-foreground ring-2 ring-primary/40"
                : "bg-muted/50 text-foreground hover:bg-muted"
            )}
          >
            <Icon className="h-4 w-4 text-muted-foreground" />
            <p className="text-lg font-bold leading-tight">{countByType[type] ?? 0}</p>
            <p className="text-[10px] text-muted-foreground">
              {MEDIA_TYPE_PLURAL_LABELS[type]}
            </p>
          </Link>
        );
      })}
    </div>
  );
}
