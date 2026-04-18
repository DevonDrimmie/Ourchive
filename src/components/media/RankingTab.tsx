import { useEffect, useMemo, useState } from "react";
import { Link } from "react-router-dom";
import { Film, Tv, BookOpen, Disc3, GripVertical, Loader2 } from "lucide-react";
import {
  DndContext,
  PointerSensor,
  KeyboardSensor,
  closestCenter,
  useSensor,
  useSensors,
  type DragEndEvent,
} from "@dnd-kit/core";
import {
  SortableContext,
  arrayMove,
  sortableKeyboardCoordinates,
  useSortable,
  verticalListSortingStrategy,
} from "@dnd-kit/sortable";
import { CSS } from "@dnd-kit/utilities";
import { format, parseISO } from "date-fns";

import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { Button } from "@/components/ui/button";
import { RatingStars } from "@/components/media/RatingStars";
import { useRankings, useSaveRankings } from "@/lib/hooks/useRankings";
import type { EntryWithMedia } from "@/components/media/MediaCollectionInsights";
import type { Media, MediaType } from "@/types";
import { cn } from "@/lib/utils";

const typeIcons: Record<MediaType, typeof Film> = {
  movie: Film,
  tv: Tv,
  book: BookOpen,
  record: Disc3,
};

/** Statuses considered "consumed" or "in the process of being consumed". */
function isConsumedEntry(e: EntryWithMedia): boolean {
  return e.status === "consuming" || e.status === "completed";
}

/**
 * Year used by the filter dropdown.
 * Books filter by the year of `consumed_date` (date logged).
 * Other media types filter by `media.year` (release year).
 */
function filterYear(e: EntryWithMedia, mediaType: MediaType): number | null {
  if (mediaType === "book") {
    if (!e.consumed_date) return null;
    try {
      return parseISO(e.consumed_date).getFullYear();
    } catch {
      return null;
    }
  }
  return e.media.year ?? null;
}

function CoverThumb({ media }: { media: Media }) {
  const Icon = typeIcons[media.media_type];
  return (
    <div
      className={cn(
        "relative shrink-0 overflow-hidden rounded-md bg-muted",
        media.media_type === "record" ? "h-14 w-14" : "h-16 w-12"
      )}
    >
      {media.cover_url ? (
        <img
          src={media.cover_url}
          alt=""
          className="h-full w-full object-cover"
          loading="lazy"
          referrerPolicy="no-referrer"
        />
      ) : (
        <div className="flex h-full w-full items-center justify-center">
          <Icon className="h-5 w-5 text-muted-foreground/40" />
        </div>
      )}
    </div>
  );
}

interface RankingItem {
  mediaId: string;
  entry: EntryWithMedia;
}

function SortableRow({
  item,
  index,
  editable,
  mediaType,
}: {
  item: RankingItem;
  index: number;
  editable: boolean;
  mediaType: MediaType;
}) {
  const {
    attributes,
    listeners,
    setNodeRef,
    transform,
    transition,
    isDragging,
  } = useSortable({ id: item.mediaId, disabled: !editable });

  const style = {
    transform: CSS.Transform.toString(transform),
    transition,
  };

  const { entry } = item;
  const { media } = entry;

  const subtitle =
    mediaType === "book" && entry.consumed_date
      ? `Logged ${format(parseISO(entry.consumed_date), "MMM yyyy")}`
      : media.year != null
        ? String(media.year)
        : null;

  const RowInner = (
    <div className="flex min-w-0 flex-1 items-center gap-3">
      <CoverThumb media={media} />
      <div className="min-w-0 flex-1">
        <p className="truncate text-sm font-medium">{media.title}</p>
        <div className="mt-0.5 flex flex-wrap items-center gap-2 text-xs text-muted-foreground">
          {subtitle && <span>{subtitle}</span>}
          {entry.rating != null && (
            <RatingStars rating={entry.rating} size="sm" />
          )}
        </div>
      </div>
    </div>
  );

  return (
    <li
      ref={setNodeRef}
      style={style}
      className={cn(
        "flex items-center gap-2 rounded-lg border border-border/50 bg-card p-2 transition-colors",
        isDragging && "z-10 border-primary/50 shadow-lg"
      )}
    >
      <span className="w-6 shrink-0 text-center text-sm font-bold tabular-nums text-muted-foreground">
        {index + 1}
      </span>

      {editable && (
        <button
          type="button"
          className="flex h-8 w-6 shrink-0 cursor-grab items-center justify-center rounded text-muted-foreground hover:bg-muted active:cursor-grabbing"
          aria-label={`Drag ${media.title}`}
          {...attributes}
          {...listeners}
        >
          <GripVertical className="h-4 w-4" />
        </button>
      )}

      <Link
        to={`/media/${media.id}`}
        className="min-w-0 flex-1 hover:opacity-90"
      >
        {RowInner}
      </Link>
    </li>
  );
}

export function RankingTab({
  entries,
  userId,
  mediaType,
  editable,
}: {
  entries: EntryWithMedia[];
  userId: string;
  mediaType: MediaType;
  editable: boolean;
}) {
  const { data: ranking, isLoading } = useRankings(userId, mediaType);
  const saveRankings = useSaveRankings();

  const [yearFilter, setYearFilter] = useState<string>("all");

  /** Map of mediaId -> latest entry for this user, restricted to consumed statuses. */
  const consumedEntriesByMediaId = useMemo(() => {
    const map = new Map<string, EntryWithMedia>();
    for (const e of entries) {
      if (!isConsumedEntry(e)) continue;
      const existing = map.get(e.media.id);
      if (
        !existing ||
        new Date(e.updated_at).getTime() >
          new Date(existing.updated_at).getTime()
      ) {
        map.set(e.media.id, e);
      }
    }
    return map;
  }, [entries]);

  /**
   * Local working order of media IDs for this media type.
   * Initialized from saved ranking + any newly eligible items appended at the end.
   * Items no longer in the consumed set are dropped.
   */
  const [order, setOrder] = useState<string[]>([]);

  useEffect(() => {
    if (isLoading) return;
    const eligible = new Set(consumedEntriesByMediaId.keys());
    const persisted = (ranking ?? [])
      .map((r) => r.media_id)
      .filter((id) => eligible.has(id));
    const persistedSet = new Set(persisted);
    const newcomers = Array.from(eligible).filter((id) => !persistedSet.has(id));
    setOrder([...persisted, ...newcomers]);
  }, [ranking, consumedEntriesByMediaId, isLoading]);

  /** Years available given the consumed entries (release year, or logged year for books). */
  const availableYears = useMemo(() => {
    const set = new Set<number>();
    for (const e of consumedEntriesByMediaId.values()) {
      const y = filterYear(e, mediaType);
      if (y != null) set.add(y);
    }
    return Array.from(set).sort((a, b) => b - a);
  }, [consumedEntriesByMediaId, mediaType]);

  const items: RankingItem[] = useMemo(() => {
    const list: RankingItem[] = [];
    for (const id of order) {
      const entry = consumedEntriesByMediaId.get(id);
      if (!entry) continue;
      if (yearFilter !== "all") {
        const y = filterYear(entry, mediaType);
        if (String(y) !== yearFilter) continue;
      }
      list.push({ mediaId: id, entry });
    }
    return list;
  }, [order, consumedEntriesByMediaId, yearFilter, mediaType]);

  const sensors = useSensors(
    useSensor(PointerSensor, { activationConstraint: { distance: 4 } }),
    useSensor(KeyboardSensor, {
      coordinateGetter: sortableKeyboardCoordinates,
    })
  );

  /**
   * Reorder within the filtered view but persist the change against the full order
   * so items hidden by the year filter keep their relative position.
   */
  function handleDragEnd(event: DragEndEvent) {
    const { active, over } = event;
    if (!over || active.id === over.id) return;

    const visibleIds = items.map((i) => i.mediaId);
    const oldVisibleIdx = visibleIds.indexOf(String(active.id));
    const newVisibleIdx = visibleIds.indexOf(String(over.id));
    if (oldVisibleIdx === -1 || newVisibleIdx === -1) return;

    const reorderedVisible = arrayMove(visibleIds, oldVisibleIdx, newVisibleIdx);

    const visibleSet = new Set(visibleIds);
    const next: string[] = [];
    let cursor = 0;
    for (const id of order) {
      if (visibleSet.has(id)) {
        next.push(reorderedVisible[cursor]!);
        cursor += 1;
      } else {
        next.push(id);
      }
    }

    setOrder(next);
    saveRankings.mutate({ userId, mediaType, mediaIds: next });
  }

  function handleResetAlphabetical() {
    const next = [...order].sort((a, b) => {
      const ea = consumedEntriesByMediaId.get(a)?.media.title ?? "";
      const eb = consumedEntriesByMediaId.get(b)?.media.title ?? "";
      return ea.localeCompare(eb, undefined, { sensitivity: "base" });
    });
    setOrder(next);
    saveRankings.mutate({ userId, mediaType, mediaIds: next });
  }

  if (isLoading) {
    return (
      <div className="flex items-center justify-center py-10">
        <Loader2 className="h-5 w-5 animate-spin text-muted-foreground" />
      </div>
    );
  }

  if (consumedEntriesByMediaId.size === 0) {
    return (
      <p className="py-8 text-center text-sm text-muted-foreground">
        Nothing to rank yet — log some entries first.
      </p>
    );
  }

  return (
    <div className="space-y-3">
      <div className="flex flex-wrap items-center justify-between gap-2">
        <div className="flex items-center gap-2">
          <Select value={yearFilter} onValueChange={setYearFilter}>
            <SelectTrigger className="h-8 w-36 text-xs">
              <SelectValue
                placeholder={mediaType === "book" ? "Year logged" : "Year released"}
              />
            </SelectTrigger>
            <SelectContent>
              <SelectItem value="all">
                {mediaType === "book" ? "All years logged" : "All release years"}
              </SelectItem>
              {availableYears.map((y) => (
                <SelectItem key={y} value={String(y)}>
                  {y}
                </SelectItem>
              ))}
            </SelectContent>
          </Select>
          <span className="text-xs text-muted-foreground">
            {items.length} item{items.length === 1 ? "" : "s"}
          </span>
        </div>

        {editable && (
          <Button
            type="button"
            variant="ghost"
            size="sm"
            className="h-8 text-xs"
            onClick={handleResetAlphabetical}
            disabled={saveRankings.isPending || order.length === 0}
          >
            Sort A–Z
          </Button>
        )}
      </div>

      {!editable && (
        <p className="text-xs text-muted-foreground">
          Viewing another user's ranking — drag to reorder is disabled.
        </p>
      )}

      {items.length === 0 ? (
        <p className="py-8 text-center text-sm text-muted-foreground">
          No items match this filter.
        </p>
      ) : (
        <DndContext
          sensors={sensors}
          collisionDetection={closestCenter}
          onDragEnd={handleDragEnd}
        >
          <SortableContext
            items={items.map((i) => i.mediaId)}
            strategy={verticalListSortingStrategy}
          >
            <ol className="space-y-2">
              {items.map((item, idx) => (
                <SortableRow
                  key={item.mediaId}
                  item={item}
                  index={idx}
                  editable={editable}
                  mediaType={mediaType}
                />
              ))}
            </ol>
          </SortableContext>
        </DndContext>
      )}
    </div>
  );
}
