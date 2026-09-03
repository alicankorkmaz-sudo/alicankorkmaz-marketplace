# SYLLABUS.md Format

`SYLLABUS.md` is the ordered list of lessons that unlock the mission outcome, bounded by the time budget in `MISSION.md`. It is the contract on what will be taught, what is deferred, and what was cut to make the deadline.

## Template

```md
# Syllabus: {Topic}

_Deadline {YYYY-MM-DD} · Available {min} min · Cap (80%) {min} min · Planned {min} min · Updated {YYYY-MM-DD}_

| # | Lesson | Unlocks | Min | Status |
|---|---|---|---|---|
| 1 | {title} | {which done-when check or later lesson it enables} | 20 | done |
| 2 | {title} | {…} | 20 | explain-back-pending |
| 3 | {title} | {…} | 15 | next |
| 4 | {title} | {…} | 25 | planned |

Status: planned · next · in-progress · done · explain-back-pending · cut

## Deferred (not needed for the outcome)
- {concept} — why it can wait · pick it up at: {source or road-to-mastery}

## Cuts (were planned, removed to fit the time budget)
- {YYYY-MM-DD} · #{n} {title} — {reason: fit check failed by {x} min / mission narrowed}
```

## Rules

- **Planned minutes ≤ 80% of available minutes.** Recompute on every session start. Over → cut from the bottom, log the cut, tell the user.
- **15–25 minutes per lesson.** Longer means two lessons. Shorter means it is a check inside another lesson, not a lesson.
- **Every row names what it unlocks.** A lesson that unlocks nothing in `MISSION.md` is deferred, not planned.
- **Prerequisite order, then interleave.** Once prerequisites are satisfied, alternate related-but-distinct areas rather than blocking one area for several lessons.
- **Exactly one `next`.** Set it at session close so the next session starts without deliberation.
- **`explain-back-pending` is not done.** The lesson was taught but the explain-back failed; the retest happens at the next session start, after the SRS drill.
- **Re-lessons are rows too.** Two SRS misses in a row add a 10–15 minute re-lesson row, marked as such in the title.
- **Deferred entries say where to pick them up.** Deferred is a promise, not a dustbin.
- **Cuts are dated and reasoned.** The user should be able to see exactly what the deadline cost them.
- **Show it in five lines.** When presenting the syllabus in conversation, summarise; the table stays in the file.
