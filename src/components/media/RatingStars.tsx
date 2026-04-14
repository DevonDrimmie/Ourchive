import { Star } from "lucide-react";
import { cn } from "@/lib/utils";

interface RatingStarsProps {
  rating: number | null;
  onChange?: (rating: number) => void;
  size?: "sm" | "md" | "lg";
}

const sizes = {
  sm: "h-3.5 w-3.5",
  md: "h-5 w-5",
  lg: "h-6 w-6",
};

export function RatingStars({
  rating,
  onChange,
  size = "md",
}: RatingStarsProps) {
  const interactive = !!onChange;
  const stars = [1, 2, 3, 4, 5];

  return (
    <div className="flex items-center gap-0.5">
      {stars.map((star) => {
        const filled = rating !== null && star <= Math.floor(rating);
        const half = rating !== null && !filled && star - 0.5 <= rating;

        return (
          <div key={star} className="relative">
            {interactive && (
              <>
                <button
                  type="button"
                  className="absolute left-0 top-0 h-full w-1/2 z-10"
                  onClick={() => onChange(star - 0.5)}
                  aria-label={`Rate ${star - 0.5} stars`}
                />
                <button
                  type="button"
                  className="absolute right-0 top-0 h-full w-1/2 z-10"
                  onClick={() => onChange(star)}
                  aria-label={`Rate ${star} stars`}
                />
              </>
            )}
            <div className="relative">
              <Star
                className={cn(
                  sizes[size],
                  "text-muted-foreground/30 transition-colors",
                  interactive && "cursor-pointer"
                )}
              />
              {(filled || half) && (
                <div
                  className="absolute inset-0 overflow-hidden"
                  style={{ width: half ? "50%" : "100%" }}
                >
                  <Star
                    className={cn(
                      sizes[size],
                      "fill-primary text-primary transition-colors"
                    )}
                  />
                </div>
              )}
            </div>
          </div>
        );
      })}
      {rating !== null && (
        <span
          className={cn(
            "ml-1 font-medium tabular-nums text-muted-foreground",
            size === "sm" && "text-xs",
            size === "md" && "text-sm",
            size === "lg" && "text-base"
          )}
        >
          {rating.toFixed(1)}
        </span>
      )}
    </div>
  );
}
