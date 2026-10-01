# RECALL.md Format

`RECALL.md` is the spaced-recall queue: one line per recall question from the reference cards, telling the next session what to ask from memory before anything else. It replaces "ask the latest card's questions": older questions come back on schedule instead of being carried over by hand.

The name differs from `fast-learning`'s `SRS.md` on purpose: `fast-learning` treats an `SRS.md` as its own workspace marker.

## Template

```md
# Recall: {Topic}

_Boxes: 1 → next session · 2 → +2 days · 3 → +5 days · 4 → +12 days · 5 → +30 days · 6 → retired · Updated {YYYY-MM-DD}_

| Question | Card | Box | Due | Last | Streak |
|---|---|---|---|---|---|
| {question, as on the card} | reference/{slug}.md | 1 | next session | miss {YYYY-MM-DD} | 0 |
| {question} | reference/{slug}.md | 3 | {YYYY-MM-DD} | hit {YYYY-MM-DD} | 2 |

## Retired
- {question} — {retired at box 6 | replaced by a harder one} {YYYY-MM-DD}
```

## Rules

- **Box schedule is fixed.** 1 → next session, 2 → +2 days, 3 → +5 days, 4 → +12 days, 5 → +30 days, 6 → retired. Due dates are computed from the date of the last answer.
- **Hit → next box, streak +1.** Miss → box 1, streak 0, plus a 60-second re-explanation on the spot.
- **Two misses in a row → a learning record** and a knowledge block on it before the next challenge that depends on it. If the question was never taught, it is curriculum debt: teach it, and don't move the item down a box.
- **Entry point.** Every recall question written on a card at session close enters at box 1. Nothing enters any other way.
- **Ask what is due, one at a time, from memory,** before anything else in the session. Never show the card first. Grade before moving to the next item. More than five due → ask the five most overdue; the rest stay due.
- **A right answer with a wrong reason is a miss.** Ask "why?" on at least every third item.
- **Rotate upward.** When a question reaches box 4, replace it on the card with a harder one about the same principle (a transfer case, a twist); the new one enters at box 2 and the old one moves to Retired.
- **Sort by due date, earliest first.** The next session should be able to read the top of the table and start asking.
- **Missing in an older workspace?** Seed it at session start from the recall questions on every existing card, all at box 1 and due today, oldest card first. Say so once.
