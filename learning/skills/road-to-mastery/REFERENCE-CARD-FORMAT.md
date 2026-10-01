# Reference Card Format

Reference cards live in `./reference/` as Markdown: `{slug}.md`. They are what the user actually revisits. A card is the compressed essence of one coherent unit — a technique, a decision procedure, a mental model, a checklist, a syntax cluster — formatted to scan in thirty seconds and print on one page.

Every card ends with recall questions. Each enters `RECALL.md`, which schedules it ([RECALL-FORMAT.md](./RECALL-FORMAT.md)); due questions are asked at the start of a session, from memory, before anything else. This is the spacing mechanism of the whole skill.

## Template

```md
# {Title}

_Updated: {date} · Sources: {RESOURCES.md entries}_

{One-line statement of what this card is for and when to reach for it.}

## The essence
{The compressed content: a checklist, a decision tree, an algorithm, a table of cases, a snippet cluster, a model with its three moving parts. No prose paragraphs longer than three lines.}

## Watch out for
- {The hidden assumption / edge case / twist from the challenges that produced this card}

## Read in full
- [{The single best primary source on this}]({url})

## Recall questions
1. {Question answerable from memory in one or two sentences. Tests a principle, not a fact.}
2. {…}
3. {…}
{3–5 total. Mix: one definitional, one "what breaks if…", one "which approach when…".}
```

## Rules

- **One unit per card.** If it needs a second heading level, it is two cards.
- **Recall questions test transfer, not trivia.** "What is X" is weak; "you see symptom Y — which of the two approaches, and why" is strong.
- **Rotate recall questions upward.** When a question reaches box 4 in `RECALL.md`, replace it with a harder one about the same principle (see the rotation rule there). Record persistent misses as a learning record.
- **Cards supersede lessons.** If a challenge or knowledge block said it better, move it here; the challenge file is the log, the card is the artefact.
- **Print test.** If it wouldn't survive being printed and pinned above a desk, it is not finished.

## HTML companion

Some cards get a page next to them: an **explore** page (predict, then reveal; also the simulation rung), a **field** page (a job aid for the bench that answers freely) or the skill **map**. Recall questions stay on the Markdown card and are asked in the conversation; they never go on a page. When to write one, which type, and the rules: [HTML-COMPANION-FORMAT.md](./HTML-COMPANION-FORMAT.md).
