import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import {
  BOOK_FORMAT_LABELS,
  RECORD_FORMAT_LABELS,
  type BookEntryDetails,
  type BookFormat,
  type EntryDetails,
  type GameEntryDetails,
  type MediaType,
  type MovieEntryDetails,
  type RecordEntryDetails,
  type RecordFormat,
  type TvEntryDetails,
} from "@/types";

const NONE = "__none__";

const toNumber = (s: string): number | null => (s.trim() === "" ? null : Number(s));

function Field({ label, children }: { label: string; children: React.ReactNode }) {
  return (
    <div className="flex-1 min-w-0">
      <Label className="text-xs text-muted-foreground mb-1.5">{label}</Label>
      {children}
    </div>
  );
}

function NumberInput({
  value,
  onChange,
  min = 0,
  step,
  placeholder,
}: {
  value: number | null;
  onChange: (n: number | null) => void;
  min?: number;
  step?: number;
  placeholder?: string;
}) {
  return (
    <Input
      type="number"
      inputMode="decimal"
      min={min}
      step={step}
      value={value ?? ""}
      placeholder={placeholder}
      onChange={(e) => onChange(toNumber(e.target.value))}
      className="h-9"
    />
  );
}

function FormatSelect<F extends string>({
  value,
  labels,
  onChange,
}: {
  value: F | null;
  labels: Record<F, string>;
  onChange: (f: F | null) => void;
}) {
  return (
    <Select
      value={value ?? NONE}
      onValueChange={(v) => onChange(v === NONE ? null : (v as F))}
    >
      <SelectTrigger className="h-9 w-full">
        <SelectValue />
      </SelectTrigger>
      <SelectContent>
        <SelectItem value={NONE}>Not set</SelectItem>
        {(Object.keys(labels) as F[]).map((f) => (
          <SelectItem key={f} value={f}>
            {labels[f]}
          </SelectItem>
        ))}
      </SelectContent>
    </Select>
  );
}

/** Per-type entry fields stored in the matching *_entry_details table. */
export function EntryTypeFields({
  mediaType,
  value,
  onChange,
  platformOptions = [],
}: {
  mediaType: MediaType;
  value: EntryDetails;
  onChange: (next: EntryDetails) => void;
  /** Game platforms from the media row, offered as suggestions */
  platformOptions?: string[];
}) {
  switch (mediaType) {
    case "movie": {
      const d = value as MovieEntryDetails;
      return (
        <Field label="Times rewatched">
          <NumberInput
            value={d.rewatch_count}
            onChange={(n) => onChange({ ...d, rewatch_count: n ?? 0 })}
          />
        </Field>
      );
    }
    case "tv": {
      const d = value as TvEntryDetails;
      return (
        <div className="flex gap-3">
          <Field label="Season">
            <NumberInput
              min={1}
              value={d.current_season}
              onChange={(n) => onChange({ ...d, current_season: n })}
            />
          </Field>
          <Field label="Episode">
            <NumberInput
              min={1}
              value={d.current_episode}
              onChange={(n) => onChange({ ...d, current_episode: n })}
            />
          </Field>
        </div>
      );
    }
    case "book": {
      const d = value as BookEntryDetails;
      return (
        <div className="space-y-3">
          <div className="flex gap-3">
            <Field label="Format">
              <FormatSelect<BookFormat>
                value={d.format}
                labels={BOOK_FORMAT_LABELS}
                onChange={(format) => onChange({ ...d, format })}
              />
            </Field>
            <Field label="Started">
              <input
                type="date"
                value={d.started_date ?? ""}
                onChange={(e) => onChange({ ...d, started_date: e.target.value || null })}
                className="flex h-9 w-full rounded-md border border-input bg-transparent px-3 py-1 text-sm shadow-sm transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring date-input"
              />
            </Field>
          </div>
          <Field label="Pages read">
            <NumberInput
              value={d.pages_read}
              onChange={(n) => onChange({ ...d, pages_read: n })}
            />
          </Field>
        </div>
      );
    }
    case "record": {
      const d = value as RecordEntryDetails;
      return (
        <Field label="Format">
          <FormatSelect<RecordFormat>
            value={d.format}
            labels={RECORD_FORMAT_LABELS}
            onChange={(format) => onChange({ ...d, format })}
          />
        </Field>
      );
    }
    case "game": {
      const d = value as GameEntryDetails;
      return (
        <div className="flex gap-3">
          <Field label="Platform">
            <Input
              list="game-platform-options"
              value={d.platform ?? ""}
              placeholder="e.g. Switch"
              onChange={(e) => onChange({ ...d, platform: e.target.value || null })}
              className="h-9"
            />
            <datalist id="game-platform-options">
              {platformOptions.map((p) => (
                <option key={p} value={p} />
              ))}
            </datalist>
          </Field>
          <Field label="Hours played">
            <NumberInput
              step={0.5}
              value={d.hours_played}
              onChange={(n) => onChange({ ...d, hours_played: n })}
            />
          </Field>
        </div>
      );
    }
  }
}
