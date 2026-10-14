import { createContext, useContext, useLayoutEffect, useState } from "react";
import { cn } from "@/lib/utils";

export const PAGE_WIDTHS = {
  narrow: "max-w-2xl",
  feed: "max-w-3xl",
  wide: "max-w-5xl",
} as const;

export type PageWidth = keyof typeof PAGE_WIDTHS;

const PageWidthContext = createContext<{
  width: PageWidth;
  setWidth: (width: PageWidth) => void;
}>({ width: "wide", setWidth: () => {} });

/** Lets the header match the column width of whichever PageShell is mounted. */
export function PageWidthProvider({ children }: { children: React.ReactNode }) {
  const [width, setWidth] = useState<PageWidth>("wide");
  return (
    <PageWidthContext.Provider value={{ width, setWidth }}>
      {children}
    </PageWidthContext.Provider>
  );
}

export function usePageWidthClass() {
  return PAGE_WIDTHS[useContext(PageWidthContext).width];
}

interface PageShellProps {
  children: React.ReactNode;
  width?: PageWidth;
  className?: string;
}

export function PageShell({ children, width = "wide", className }: PageShellProps) {
  const { setWidth } = useContext(PageWidthContext);

  useLayoutEffect(() => {
    setWidth(width);
    return () => setWidth("wide");
  }, [width, setWidth]);

  return (
    <main
      className={cn(
        "mx-auto w-full min-w-0 px-4 py-6",
        PAGE_WIDTHS[width],
        className
      )}
    >
      {children}
    </main>
  );
}
