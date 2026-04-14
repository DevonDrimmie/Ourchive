import type { SearchResult } from "@/types";

interface OpenLibDoc {
  key: string;
  title: string;
  first_publish_year?: number;
  cover_i?: number;
  subject?: string[];
  author_name?: string[];
  isbn?: string[];
  number_of_pages_median?: number;
}

export async function searchBooks(query: string): Promise<SearchResult[]> {
  const res = await fetch(
    `https://openlibrary.org/search.json?q=${encodeURIComponent(query)}&limit=10&fields=key,title,first_publish_year,cover_i,subject,author_name,isbn,number_of_pages_median`
  );
  const data = await res.json();

  return (data.docs ?? []).slice(0, 10).map((doc: OpenLibDoc) => ({
    external_id: doc.key,
    external_source: "openlibrary",
    media_type: "book" as const,
    title: doc.title,
    year: doc.first_publish_year ?? null,
    cover_url: doc.cover_i
      ? `https://covers.openlibrary.org/b/id/${doc.cover_i}-L.jpg`
      : null,
    genres: (doc.subject ?? []).slice(0, 5),
    metadata: {
      authors: doc.author_name ?? [],
      isbn: doc.isbn?.[0] ?? null,
      pages: doc.number_of_pages_median ?? null,
    },
  }));
}
