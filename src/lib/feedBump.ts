import type { EntryStatus, OwnershipStatus } from "@/types";

/**
 * Returns true when a status/ownership change should move this entry to the top
 * of the home feed (wishlist → watching/finished, or want-to-own → physically owned).
 */
export function shouldBumpFeedEvent(
  prev: { status: EntryStatus; ownership: OwnershipStatus },
  next: { status: EntryStatus; ownership: OwnershipStatus }
): boolean {
  if (prev.status === "want" && next.status !== "want") {
    return true;
  }
  if (
    prev.ownership === "want_to_own" &&
    (next.ownership === "physical" || next.ownership === "digital")
  ) {
    return true;
  }
  return false;
}
