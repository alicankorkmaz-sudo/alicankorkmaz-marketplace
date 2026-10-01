# SYLLABUS.md Format

`SYLLABUS.md` holds the Pareto map of the topic and the ordered lessons that teach its core. It is the contract on what will be taught, what goes on a field card, and what was deliberately left out.

## Template

```md
# Syllabus: {Topic}

_Updated {YYYY-MM-DD}_

## Pareto map

### Core (the outcome fails without these)
- {concept} — {deciding signal: used constantly / N concepts depend on it / costly when wrong / transfers from {known domain}}

### Support (only so a core concept works; teach the minimum)
- {concept} — {which core concept needs it}

### Field card (looked up, not memorised)
- {concept or table} — {why it is rare, exact or long} · card: reference/{slug}.md

### Pruned (does not move the outcome)
- {concept} — {why it can go} · pick it up at: {source or road-to-mastery}

## Lessons

| # | Lesson | Unlocks | Status |
|---|---|---|---|
| 1 | {title} | {which done-when check or later lesson it enables} | done |
| 2 | {title} | {…} | explain-back-pending |
| 3 | {title} | {…} | next |
| 4 | {title} | {…} | planned |

Status: planned · next · in-progress · done · explain-back-pending

## Promoted (were pruned or on a field card, now taught)
- {YYYY-MM-DD} · {concept} — {what ran into it}
```

## Rules

- **Map the whole topic, not just the plan.** Every concept the resources cover gets a class. The pruned list is what makes the core credible.
- **Name the deciding signal.** Frequency of use, number of dependants, cost of error, transfer from known material. A concept with none of these is pruned.
- **Never prune safety**, nor a concept whose misunderstanding silently breaks the outcome.
- **Field card means looked up.** Tables, flags, typical values, exact syntax that is rarely used. If the user keeps looking the same item up, move it to a lesson.
- **Lessons cover core and support only.** A lesson that unlocks nothing in `MISSION.md` shouldn't exist; its concept is pruned.
- **At most about four new ideas per lesson.** More means two lessons. One idea means it is a check inside another lesson.
- **Prerequisite order, then interleave.** Once prerequisites are satisfied, alternate related-but-distinct areas rather than blocking one area for several lessons.
- **Exactly one `next`.** Set it at session close so the next session starts without deliberation.
- **`explain-back-pending` is not done.** The lesson was taught but the explain-back failed; the retest happens at the next session start, after the SRS drill.
- **Re-lessons are rows too.** Two SRS misses in a row add a short re-lesson row, marked as such in the title, taught with a different shortcut.
- **Pruned entries say where to pick them up.** They become the backlog if the user later deepens with `road-to-mastery`.
- **Promotions are dated and reasoned.** Pruning was a bet; the Promoted list shows where it lost.
- **Show it in six lines.** When presenting the map in conversation, summarise; the full lists stay in the file.
- **Legacy fields** (deadline, minutes, budget header, Cuts list) from earlier versions are dropped on the next rewrite; Cuts entries move to *Pruned*.
