import type { MediaType } from "@/types";
import { cn } from "@/lib/utils";
import { MEDIA_TYPE_ICONS } from "@/components/media/mediaTypeIcons";

interface CoverImageProps {
  src: string | null;
  alt: string;
  mediaType: MediaType;
  className?: string;
}

export function CoverImage({
  src,
  alt,
  mediaType,
  className,
}: CoverImageProps) {
  const Icon = MEDIA_TYPE_ICONS[mediaType];

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
          referrerPolicy="no-referrer"
          crossOrigin="anonymous"
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
        <Icon className="h-1/3 w-1/3 max-h-12 max-w-12 text-muted-foreground/30" />
      </div>
    </div>
  );
}
