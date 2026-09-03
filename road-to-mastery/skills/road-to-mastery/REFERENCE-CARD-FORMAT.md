# Reference Card Format

Reference cards live in `./reference/` as Markdown: `{slug}.md`. They are what the user actually revisits. A card is the compressed essence of one coherent unit — a technique, a decision procedure, a mental model, a checklist, a syntax cluster — formatted to scan in thirty seconds and print on one page.

Every card ends with recall questions. They are read back at the start of the next session, from memory, before anything else. This is the spacing mechanism of the whole skill.

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
- **Rotate recall questions.** When the user answers a question correctly across two sessions, retire it and add a harder one. Record persistent misses as a learning record.
- **Cards supersede lessons.** If a challenge or knowledge block said it better, move it here; the challenge file is the log, the card is the artefact.
- **Print test.** If it wouldn't survive being printed and pinned above a desk, it is not finished.
