# PLACEMENT.md Format

`PLACEMENT.md` records what the placement test showed. It decides what is **not** taught (the biggest speed lever) and what enters `SRS.md` already known. It is rewritten in full on every re-test.

## Template

```md
# Placement: {Topic}

_Tested: {YYYY-MM-DD} · Items asked: {n} of {total} · Stopped: {after three consecutive misses at item n | end of list}_

## Known → SRS box 3, not taught
| Concept | Evidence |
|---|---|
| {concept} | {what the user said or did that proves it, in a few words} |

## Shaky → short lesson
| Concept | Evidence |
|---|---|
| {concept} | {right answer, wrong reason / hesitant / partial} |

## Unknown → syllabus
| Concept | Evidence |
|---|---|
| {concept} | {miss, or past the stop point} |

## Misconceptions → fixed inside the lesson that touches them
| Belief | Correct version | Evidence | Lesson |
|---|---|---|---|
| {what the user believes} | {what is true} | {quote} | {#} |

## Not tested
- {concepts beyond the stop point, treated as unknown}
```

## Rules

- **Evidence on every line.** A label without a quote or observed action is a guess, and guesses put wrong things in the not-taught pile.
- **Known means demonstrated, not claimed.** "I've used it" is shaky until a recall item or one-sentence explanation lands.
- **Three consecutive misses stop the test.** Everything after the stop point is unknown. Do not keep probing; it costs time and confidence.
- **Right answer, wrong reason is shaky.** Ask "why?" on at least one item.
- **Misconceptions get a lesson number** once `SYLLABUS.md` exists, so the fix is scheduled rather than hoped for.
- **Re-test rewrites the file.** Triggers: two SRS misses in a row on a "known" concept, the mission changes, or the user reports learning done elsewhere. Note the date; keep only the current picture.
- **Do not flatter.** An overstated placement removes lessons the user needed.
