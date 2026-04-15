import { useParams, Link, Navigate } from "react-router-dom";
import { PageShell } from "@/components/layout/PageShell";
import { Avatar, AvatarFallback, AvatarImage } from "@/components/ui/avatar";
import { Separator } from "@/components/ui/separator";
import { TopFourGrid } from "@/components/media/TopFourGrid";
import { useTopFours } from "@/lib/hooks/useTopFours";
import { useProfiles, useCollection } from "@/lib/hooks/useEntries";
import { useAuth } from "@/lib/hooks/useAuth";
import type { MediaType, Entry, Media, EntryStatus } from "@/types";
import { MEDIA_TYPE_LABELS, STATUS_LABELS } from "@/types";
import { Loader2, ChevronLeft } from "lucide-react";
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

const slugToMediaType: Record<string, MediaType> = {
  movies: "movie",
  tv: "tv",
  books: "book",
  records: "record",
};

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

interface EntryWithMedia extends Entry {
  media: Media;
}

function GenreChart({ entries }: { entries: EntryWithMedia[] }) {
  const genreCounts: Record<string, number> = {};
  entries.forEach((e) => {
    (e.media.genres ?? []).forEach((g) => {
      genreCounts[g] = (genreCounts[g] ?? 0) + 1;
    });
  });

  const data = Object.entries(genreCounts)
    .sort((a, b) => b[1] - a[1])
    .slice(0, 10)
    .map(([name, count]) => ({ name, count }));

  if (data.length === 0)
    return (
      <p className="text-sm text-muted-foreground py-8 text-center">
        No genre data yet
      </p>
    );

  return (
    <ResponsiveContainer width="100%" height="100%" minHeight={220}>
      <BarChart data={data} layout="vertical" margin={{ left: 4, right: 16 }}>
        <XAxis type="number" hide />
        <YAxis
          type="category"
          dataKey="name"
          width={100}
          tick={TICK_STYLE}
          axisLine={false}
          tickLine={false}
        />
        <Tooltip contentStyle={TOOLTIP_STYLE} cursor={{ fill: "rgba(255,255,255,0.05)" }} />
        <Bar dataKey="count" fill="#4ade80" radius={[0, 4, 4, 0]} />
      </BarChart>
    </ResponsiveContainer>
  );
}

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
                backgroundColor:
                  STATUS_COLORS[d.status] ?? CHART_COLORS[0],
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

  const data = Array.from({ length: 10 }, (_, i) => ({
    rating: i + 1,
    count: ratingCounts[i + 1] ?? 0,
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
          <BarChart data={data} margin={{ left: -20 }}>
            <XAxis
              dataKey="rating"
              tick={TICK_STYLE}
              axisLine={false}
              tickLine={false}
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
        <Tooltip contentStyle={TOOLTIP_STYLE} cursor={{ stroke: "#4ade80", strokeOpacity: 0.3 }} />
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

function AvgRatingByGenreChart({ entries }: { entries: EntryWithMedia[] }) {
  const genreStats: Record<string, { total: number; count: number }> = {};
  entries.forEach((e) => {
    if (e.rating != null) {
      (e.media.genres ?? []).forEach((g) => {
        if (!genreStats[g]) genreStats[g] = { total: 0, count: 0 };
        genreStats[g].total += e.rating!;
        genreStats[g].count += 1;
      });
    }
  });

  const data = Object.entries(genreStats)
    .filter(([, s]) => s.count >= 1)
    .map(([name, s]) => ({
      name,
      avg: Math.round((s.total / s.count) * 10) / 10,
      count: s.count,
    }))
    .sort((a, b) => b.avg - a.avg)
    .slice(0, 10);

  if (data.length === 0)
    return (
      <p className="text-sm text-muted-foreground py-8 text-center">
        No rated entries with genre data yet
      </p>
    );

  return (
    <ResponsiveContainer width="100%" height="100%" minHeight={220}>
      <BarChart data={data} layout="vertical" margin={{ left: 4, right: 16 }}>
        <XAxis type="number" domain={[0, "dataMax"]} hide />
        <YAxis
          type="category"
          dataKey="name"
          width={100}
          tick={TICK_STYLE}
          axisLine={false}
          tickLine={false}
        />
        <Tooltip
          contentStyle={TOOLTIP_STYLE}
          formatter={(value: unknown, _name: unknown, props: unknown) => {
            const p = props as { payload?: { count?: number } };
            return [`${value} avg (${p.payload?.count ?? 0} rated)`, "Rating"];
          }}
          cursor={{ fill: "rgba(255,255,255,0.05)" }}
        />
        <Bar dataKey="avg" fill="#818cf8" radius={[0, 4, 4, 0]} />
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

export function MediaDashboardPage() {
  const { id, type: typeSlug } = useParams<{ id: string; type: string }>();
  const { user } = useAuth();
  const { data: profiles, isLoading: profilesLoading } = useProfiles();
  const { data: topFours, isLoading: topFoursLoading } = useTopFours(id!);

  const mediaType = typeSlug ? slugToMediaType[typeSlug] : undefined;

  const { data: allEntries } = useCollection({ userId: id });

  const profile = profiles?.find((p) => p.id === id);
  const isOwner = user?.id === id;

  if (!mediaType) return <Navigate to={`/profile/${id}`} replace />;

  if (profilesLoading || topFoursLoading) {
    return (
      <PageShell>
        <div className="flex items-center justify-center py-20">
          <Loader2 className="h-6 w-6 animate-spin text-muted-foreground" />
        </div>
      </PageShell>
    );
  }

  if (!profile) {
    return (
      <PageShell>
        <p className="text-muted-foreground">Profile not found</p>
      </PageShell>
    );
  }

  const initials = profile.display_name
    ?.split(" ")
    .map((n) => n[0])
    .join("")
    .slice(0, 2)
    .toUpperCase();

  const entries = (allEntries ?? []).filter(
    (e: EntryWithMedia) => e.media?.media_type === mediaType
  ) as EntryWithMedia[];

  const topFourEntries = (topFours ?? []).filter(
    (e) => e.media_type === mediaType
  );

  return (
    <PageShell className="max-w-2xl">
      <div className="flex items-center gap-4">
        <Link to={`/profile/${id}`}>
          <Avatar className="h-16 w-16 hover:opacity-80 transition-opacity">
            {profile.avatar_url && (
              <AvatarImage
                src={profile.avatar_url}
                alt={profile.display_name}
              />
            )}
            <AvatarFallback className="text-xl bg-primary/20 text-primary">
              {initials}
            </AvatarFallback>
          </Avatar>
        </Link>
        <div className="min-w-0">
          <div className="flex items-center gap-2">
            <Link
              to={`/profile/${id}`}
              className="hover:underline underline-offset-4"
            >
              <h1 className="text-2xl font-bold tracking-tight truncate">
                {profile.display_name}
              </h1>
            </Link>
          </div>
          <div className="flex items-center gap-1.5 text-sm text-muted-foreground">
            <ChevronLeft className="h-3.5 w-3.5" />
            <Link
              to={`/profile/${id}`}
              className="hover:text-foreground transition-colors"
            >
              Back to profile
            </Link>
          </div>
        </div>
      </div>

      <div className="mt-4 flex items-baseline gap-2">
        <h2 className="text-lg font-bold">{MEDIA_TYPE_LABELS[mediaType]}s</h2>
        <span className="text-sm text-muted-foreground">
          {entries.length} in collection
        </span>
      </div>

      <Separator className="my-4" />

      <TopFourGrid
        mediaType={mediaType}
        entries={topFourEntries}
        userId={id!}
        editable={isOwner}
      />

      <Separator className="my-6" />

      <div className="space-y-4">
        <h2 className="text-base font-semibold">Stats & Insights</h2>

        {entries.length === 0 ? (
          <p className="text-sm text-muted-foreground py-8 text-center">
            No entries yet — start adding {MEDIA_TYPE_LABELS[mediaType].toLowerCase()}s to see stats.
          </p>
        ) : (
          <div className="grid gap-4 sm:grid-cols-2">
            <ChartCard title="By Status">
              <StatusChart entries={entries} />
            </ChartCard>

            <ChartCard title="Rating Distribution">
              <RatingChart entries={entries} />
            </ChartCard>

            <ChartCard title="Top Genres">
              <GenreChart entries={entries} />
            </ChartCard>

            <ChartCard title="Avg Rating by Genre">
              <AvgRatingByGenreChart entries={entries} />
            </ChartCard>

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
        )}
      </div>
    </PageShell>
  );
}
