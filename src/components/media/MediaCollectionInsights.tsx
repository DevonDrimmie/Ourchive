import type { Entry, Media, EntryStatus } from "@/types";
import { STATUS_LABELS } from "@/types";
import {
  BarChart,
  Bar,
  XAxis,
  YAxis,
  Tooltip,
  ResponsiveContainer,
  PieChart,
  Pie,
  Cell,
  AreaChart,
  Area,
  CartesianGrid,
} from "recharts";
import { format, parseISO } from "date-fns";

export interface EntryWithMedia extends Entry {
  media: Media;
}

const CHART_COLORS = [
  "#4ade80",
  "#818cf8",
  "#f472b6",
  "#fbbf24",
  "#f87171",
  "#2dd4bf",
  "#a78bfa",
  "#fb923c",
  "#34d399",
  "#60a5fa",
  "#e879f9",
  "#38bdf8",
];

const STATUS_COLORS: Record<string, string> = {
  want: "#facc15",
  consuming: "#60a5fa",
  completed: "#4ade80",
  dnf: "#f87171",
};

const TOOLTIP_STYLE = {
  backgroundColor: "#1a1a1f",
  border: "1px solid #2a2a30",
  borderRadius: 8,
  fontSize: 12,
  color: "#e4e4e7",
} as const;

const TICK_STYLE = { fontSize: 11, fill: "#a1a1aa" };
const TICK_STYLE_SM = { fontSize: 10, fill: "#a1a1aa" };

function ChartCard({
  title,
  children,
}: {
  title: string;
  children: React.ReactNode;
}) {
  return (
    <div className="rounded-lg border border-border/50 bg-card p-4 flex flex-col min-h-0">
      <h3 className="text-sm font-semibold text-muted-foreground mb-3">
        {title}
      </h3>
      <div className="flex-1 min-h-0">{children}</div>
    </div>
  );
}

/** Half-star buckets from 0.5 → 5 (app rating scale). */
const RATING_BUCKETS = [0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5] as const;

function StatusChart({ entries }: { entries: EntryWithMedia[] }) {
  const statusCounts: Record<string, number> = {};
  entries.forEach((e) => {
    statusCounts[e.status] = (statusCounts[e.status] ?? 0) + 1;
  });

  const data = Object.entries(statusCounts).map(([status, count]) => ({
    name: STATUS_LABELS[status as EntryStatus] ?? status,
    value: count,
    status,
  }));

  if (data.length === 0)
    return (
      <p className="text-sm text-muted-foreground py-8 text-center">
        No entries yet
      </p>
    );

  return (
    <div className="flex items-center gap-4 h-full">
      <ResponsiveContainer width="50%" height="100%" minHeight={180}>
        <PieChart>
          <Pie
            data={data}
            dataKey="value"
            nameKey="name"
            cx="50%"
            cy="50%"
            innerRadius={40}
            outerRadius={70}
            strokeWidth={2}
            stroke="#1a1a1f"
          >
            {data.map((d) => (
              <Cell
                key={d.status}
                fill={STATUS_COLORS[d.status] ?? CHART_COLORS[0]}
              />
            ))}
          </Pie>
          <Tooltip contentStyle={TOOLTIP_STYLE} />
        </PieChart>
      </ResponsiveContainer>
      <div className="flex flex-col gap-1.5">
        {data.map((d) => (
          <div key={d.status} className="flex items-center gap-2 text-sm">
            <div
              className="h-3 w-3 rounded-full"
              style={{
                backgroundColor: STATUS_COLORS[d.status] ?? CHART_COLORS[0],
              }}
            />
            <span className="text-muted-foreground">{d.name}</span>
            <span className="font-semibold">{d.value}</span>
          </div>
        ))}
      </div>
    </div>
  );
}

function RatingChart({ entries }: { entries: EntryWithMedia[] }) {
  const ratingCounts: Record<number, number> = {};
  entries.forEach((e) => {
    if (e.rating != null) {
      ratingCounts[e.rating] = (ratingCounts[e.rating] ?? 0) + 1;
    }
  });

  const data = RATING_BUCKETS.map((rating) => ({
    rating,
    count: ratingCounts[rating] ?? 0,
  }));

  const hasRatings = entries.some((e) => e.rating != null);
  if (!hasRatings)
    return (
      <p className="text-sm text-muted-foreground py-8 text-center">
        No ratings yet
      </p>
    );

  const rated = entries.filter((e) => e.rating != null);
  const avgRating =
    rated.reduce((sum, e) => sum + (e.rating ?? 0), 0) / rated.length;

  return (
    <div className="h-full flex flex-col">
      <div className="mb-2 flex items-baseline gap-2">
        <span className="text-2xl font-bold">{avgRating.toFixed(1)}</span>
        <span className="text-sm text-muted-foreground">
          avg across {rated.length} rated
        </span>
      </div>
      <div className="flex-1 min-h-0">
        <ResponsiveContainer width="100%" height="100%" minHeight={160}>
          <BarChart data={data} margin={{ left: -12, right: 4 }}>
            <XAxis
              dataKey="rating"
              tick={TICK_STYLE}
              axisLine={false}
              tickLine={false}
              tickFormatter={(v) => String(v)}
            />
            <YAxis hide />
            <Tooltip
              contentStyle={TOOLTIP_STYLE}
              labelFormatter={(v) => `Rating: ${v}`}
              cursor={{ fill: "rgba(255,255,255,0.05)" }}
            />
            <Bar dataKey="count" fill="#4ade80" radius={[4, 4, 0, 0]} />
          </BarChart>
        </ResponsiveContainer>
      </div>
    </div>
  );
}

function TimelineChart({ entries }: { entries: EntryWithMedia[] }) {
  const dated = entries
    .filter((e) => e.consumed_date)
    .sort(
      (a, b) =>
        new Date(a.consumed_date!).getTime() -
        new Date(b.consumed_date!).getTime()
    );

  if (dated.length === 0)
    return (
      <p className="text-sm text-muted-foreground py-8 text-center">
        No dates logged yet
      </p>
    );

  const monthCounts: Record<string, number> = {};
  dated.forEach((e) => {
    const month = format(parseISO(e.consumed_date!), "yyyy-MM");
    monthCounts[month] = (monthCounts[month] ?? 0) + 1;
  });

  const data = Object.entries(monthCounts)
    .sort(([a], [b]) => a.localeCompare(b))
    .map(([month, count]) => ({
      month: format(parseISO(`${month}-01`), "MMM yyyy"),
      count,
    }));

  return (
    <ResponsiveContainer width="100%" height="100%" minHeight={180}>
      <AreaChart data={data} margin={{ left: -20 }}>
        <CartesianGrid
          strokeDasharray="3 3"
          stroke="#2a2a30"
          vertical={false}
        />
        <XAxis
          dataKey="month"
          tick={TICK_STYLE_SM}
          axisLine={false}
          tickLine={false}
          interval="preserveStartEnd"
        />
        <YAxis hide />
        <Tooltip
          contentStyle={TOOLTIP_STYLE}
          cursor={{ stroke: "#4ade80", strokeOpacity: 0.3 }}
        />
        <Area
          type="monotone"
          dataKey="count"
          stroke="#4ade80"
          fill="#4ade80"
          fillOpacity={0.15}
          strokeWidth={2}
        />
      </AreaChart>
    </ResponsiveContainer>
  );
}

/** Top genres by title count; bar length = avg rating (0–5). Tooltip shows titles + avg. */
function TopGenresAvgChart({ entries }: { entries: EntryWithMedia[] }) {
  const genreCounts: Record<string, number> = {};
  entries.forEach((e) => {
    (e.media.genres ?? []).forEach((g) => {
      genreCounts[g] = (genreCounts[g] ?? 0) + 1;
    });
  });

  const topNames = Object.entries(genreCounts)
    .sort((a, b) => b[1] - a[1])
    .slice(0, 10)
    .map(([name]) => name);

  if (topNames.length === 0)
    return (
      <p className="text-sm text-muted-foreground py-8 text-center">
        No genre data yet
      </p>
    );

  const ratingAgg: Record<string, { sum: number; n: number }> = {};
  entries.forEach((e) => {
    const r = e.rating;
    if (r == null) return;
    (e.media.genres ?? []).forEach((g) => {
      if (!topNames.includes(g)) return;
      if (!ratingAgg[g]) ratingAgg[g] = { sum: 0, n: 0 };
      ratingAgg[g].sum += r;
      ratingAgg[g].n += 1;
    });
  });

  const data = topNames.map((name) => {
    const count = genreCounts[name] ?? 0;
    const agg = ratingAgg[name];
    const avg =
      agg && agg.n > 0 ? Math.round((agg.sum / agg.n) * 10) / 10 : null;
    return {
      name,
      count,
      avg,
      barValue: avg ?? 0,
    };
  });

  const chartHeight = Math.max(260, data.length * 34);

  return (
    <ResponsiveContainer width="100%" height="100%" minHeight={chartHeight}>
      <BarChart
        data={data}
        layout="vertical"
        margin={{ left: 4, right: 20, top: 4, bottom: 4 }}
      >
        <XAxis
          type="number"
          domain={[0, 5]}
          tick={TICK_STYLE}
          axisLine={false}
          tickLine={false}
        />
        <YAxis
          type="category"
          dataKey="name"
          width={118}
          tick={TICK_STYLE}
          axisLine={false}
          tickLine={false}
        />
        <Tooltip
          contentStyle={TOOLTIP_STYLE}
          formatter={(
            _value: unknown,
            _label: unknown,
            item: { payload?: { count: number; avg: number | null } }
          ) => {
            const p = item.payload;
            if (!p) return ["", ""];
            return [
              `${p.count} title${p.count === 1 ? "" : "s"} · avg ${p.avg != null ? p.avg.toFixed(1) : "—"}`,
              "",
            ];
          }}
          cursor={{ fill: "rgba(255,255,255,0.05)" }}
        />
        <Bar dataKey="barValue" fill="#818cf8" radius={[0, 4, 4, 0]} />
      </BarChart>
    </ResponsiveContainer>
  );
}

function OwnershipChart({ entries }: { entries: EntryWithMedia[] }) {
  const ownershipCounts: Record<string, number> = {};
  entries.forEach((e) => {
    const label =
      e.ownership === "physical"
        ? "Physical"
        : e.ownership === "digital"
          ? "Digital"
          : e.ownership === "want_to_own"
            ? "Want to Own"
            : "Don't Own";
    ownershipCounts[label] = (ownershipCounts[label] ?? 0) + 1;
  });

  const data = Object.entries(ownershipCounts).map(([name, value], i) => ({
    name,
    value,
    color: CHART_COLORS[i % CHART_COLORS.length],
  }));

  if (data.length === 0)
    return (
      <p className="text-sm text-muted-foreground py-8 text-center">
        No ownership data
      </p>
    );

  return (
    <div className="flex items-center gap-4 h-full">
      <ResponsiveContainer width="50%" height="100%" minHeight={180}>
        <PieChart>
          <Pie
            data={data}
            dataKey="value"
            nameKey="name"
            cx="50%"
            cy="50%"
            innerRadius={40}
            outerRadius={70}
            strokeWidth={2}
            stroke="#1a1a1f"
          >
            {data.map((d) => (
              <Cell key={d.name} fill={d.color} />
            ))}
          </Pie>
          <Tooltip contentStyle={TOOLTIP_STYLE} />
        </PieChart>
      </ResponsiveContainer>
      <div className="flex flex-col gap-1.5">
        {data.map((d) => (
          <div key={d.name} className="flex items-center gap-2 text-sm">
            <div
              className="h-3 w-3 rounded-full"
              style={{ backgroundColor: d.color }}
            />
            <span className="text-muted-foreground">{d.name}</span>
            <span className="font-semibold">{d.value}</span>
          </div>
        ))}
      </div>
    </div>
  );
}

export function MediaCollectionInsights({
  entries,
  emptyLabel = "entries",
}: {
  entries: EntryWithMedia[];
  emptyLabel?: string;
}) {
  if (entries.length === 0) {
    return (
      <p className="text-sm text-muted-foreground py-8 text-center">
        No {emptyLabel} yet — add items to see stats.
      </p>
    );
  }

  return (
    <div className="grid gap-4 sm:grid-cols-2">
      <ChartCard title="By Status">
        <StatusChart entries={entries} />
      </ChartCard>

      <ChartCard title="Rating Distribution">
        <RatingChart entries={entries} />
      </ChartCard>

      <div className="sm:col-span-2">
        <ChartCard title="Top genres & avg rating">
          <TopGenresAvgChart entries={entries} />
        </ChartCard>
      </div>

      <div className="sm:col-span-2">
        <ChartCard title="Activity Over Time">
          <TimelineChart entries={entries} />
        </ChartCard>
      </div>

      <div className="sm:col-span-2">
        <ChartCard title="Ownership">
          <OwnershipChart entries={entries} />
        </ChartCard>
      </div>
    </div>
  );
}
