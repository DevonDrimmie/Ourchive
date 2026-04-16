import { cn } from "@/lib/utils";

interface PageShellProps {
  children: React.ReactNode;
  className?: string;
}

export function PageShell({ children, className }: PageShellProps) {
  return (
    <main
      className={cn(
        "mx-auto w-full min-w-0 max-w-5xl px-4 py-6",
        className
      )}
    >
      {children}
    </main>
  );
}
