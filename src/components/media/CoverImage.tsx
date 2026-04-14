import { Film, Tv, BookOpen, Disc3 } from "lucide-react";
import type { MediaType } from "@/types";
import { cn } from "@/lib/utils";

interface CoverImageProps {
  src: string | null;
  alt: string;
  mediaType: MediaType;
  className?: string;
}

const typeIcons: Record<MediaType, typeof Film> = {
  movie: Film,
  tv: Tv,
  book: BookOpen,
  record: Disc3,
};

export function CoverImage({
  src,
  alt,
  mediaType,
  className,
}: CoverImageProps) {
  const Icon = typeIcons[mediaType];

  return (
    <div
      className={cn(
        "relative overflow-hidden rounded-lg bg-muted",
        className
      )}
    >
      {src ? (
        <img
          src={src}
          alt={alt}
          className="h-full w-full object-cover"
          loading="lazy"
          onError={(e) => {
            e.currentTarget.style.display = "none";
            e.currentTarget.nextElementSibling?.classList.remove("hidden");
          }}
        />
      ) : null}
      <div
        className={cn(
          "flex h-full w-full items-center justify-center absolute inset-0",
          src && "hidden"
        )}
      >
        <Icon className="h-12 w-12 text-muted-foreground/30" />
      </div>
    </div>
  );
}
