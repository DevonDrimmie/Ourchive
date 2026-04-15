import { Link } from "react-router-dom";
import { Film, Tv, BookOpen, Disc3 } from "lucide-react";
import type { MediaType } from "@/types";
import { MEDIA_TYPE_LABELS } from "@/types";
import { cn } from "@/lib/utils";

const mediaTypes: MediaType[] = ["movie", "tv", "book", "record"];

const mediaTypeSlugs: Record<MediaType, string> = {
  movie: "movies",
  tv: "tv",
  book: "books",
  record: "records",
};

const typeIcons: Record<MediaType, typeof Film> = {
  movie: Film,
  tv: Tv,
  book: BookOpen,
  record: Disc3,
};

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
      {mediaTypes.map((type) => {
        const Icon = typeIcons[type];
        const active = activeMediaType === type;
        return (
          <Link
            key={type}
            to={`/profile/${userId}/${mediaTypeSlugs[type]}`}
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
              {MEDIA_TYPE_LABELS[type]}s
            </p>
          </Link>
        );
      })}
    </div>
  );
}
