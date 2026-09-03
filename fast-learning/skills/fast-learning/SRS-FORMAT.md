# SRS.md Format

`SRS.md` is the spaced-retrieval queue: one line per concept, telling the next session what to ask from memory before any new material. It is the retention mechanism of the whole skill.

## Template

```md
# SRS: {Topic}

_Boxes: 1 → next session · 2 → +2 days · 3 → +5 days · 4 → +12 days · 5 → +30 days · 6 → retired · Updated {YYYY-MM-DD}_

| Concept | Box | Due | Last | Streak | Card |
|---|---|---|---|---|---|
| {concept} | 1 | next session | miss {YYYY-MM-DD} | 0 | reference/{slug}.md |
| {concept} | 3 | {YYYY-MM-DD} | hit {YYYY-MM-DD} | 2 | reference/{slug}.md |
| {concept} | 3 | {YYYY-MM-DD} | placement {YYYY-MM-DD} | 0 | — |

## Retired
- {concept} — retired {YYYY-MM-DD} after {n} hits
```

## Rules

- **Box schedule is fixed.** 1 → next session, 2 → +2 days, 3 → +5 days, 4 → +12 days, 5 → +30 days, 6 → retired. Due dates are computed from the date of the last answer.
- **Hit → next box, streak +1.** Miss → box 1, streak 0, plus a 60-second re-explanation on the spot.
- **Two misses in a row → mark shaky in `PLACEMENT.md`** and add a short re-lesson row to `SYLLABUS.md`.
- **Entry points.** Passed explain-back → box 1. Known at placement → box 3 with `Last = placement`. Nothing enters any other way.
- **Ask everything due, one at a time, from memory,** before any new material. Never show the card first. Grade before moving to the next item.
- **A right answer with a wrong reason is a miss.** Ask "why?" on at least every third item.
- **Card column points to the reference card** holding the concept. A dash is allowed only for placement-known concepts that never got a lesson.
- **Retired stays listed.** Move retired concepts to the Retired section rather than deleting them; graduation reads it.
- **Sort by due date, earliest first.** The next session should be able to read the top of the table and start asking.
