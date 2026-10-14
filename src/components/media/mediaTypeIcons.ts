import { Film, BookOpen, Disc3, Gamepad2 } from "lucide-react";
import type { MediaType } from "@/types";

export const MEDIA_TYPE_ICONS: Record<MediaType, typeof Film> = {
  movie: Film,
  book: BookOpen,
  record: Disc3,
  game: Gamepad2,
};
