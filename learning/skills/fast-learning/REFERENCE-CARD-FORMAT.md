# Reference Card Format

Reference cards live in `./reference/` as Markdown: `{slug}.md`. A card is the one page the user keeps after the deadline: the compressed essence of one concept or procedure, printable, scannable in thirty seconds. Every card ends with recall questions that `SRS.md` points at.

## Template

```md
<!-- fast-learning -->
# {Title}

_Updated {YYYY-MM-DD} · Lessons {NNNN, NNNN} · Sources: {RESOURCES.md entries}_

{One line: what this is for and when you reach for it.}

## Do this
{The procedure, checklist, decision table, snippet cluster or command sequence. Steps, not paragraphs. Nothing longer than three lines in a row.}

## The one mistake
- {The common mistake from the deeper dive, and how you notice it}

## Edge case that matters here
- {The edge case the mission cares about, and what to do}

## Read in full, after the deadline
- [{The single best source}]({url})

## Recall questions
1. {Answerable from memory in one or two sentences. Tests what to do, not what something is called.}
2. {"You see X. Which would you do, and why?"}
3. {"What breaks if you skip Y?"}
{3–5 total.}
```

## Rules

- **The first line is the marker `<!-- fast-learning -->`.** `reference/` is shared with `road-to-mastery`; the marker keeps the cards apart.
- **One concept per card.** If it needs a second `##` level of its own, it is two cards.
- **Procedure first.** The user opens this while doing the thing. Put the steps at the top; put the why in the lesson file.
- **Recall questions drive SRS.** Each SRS row's card column points here; the questions are what get asked from memory at session start.
- **Rotate questions.** After two consecutive hits on a question, replace it with a harder one. Log persistent misses in the lesson file's retest section.
- **Cards are updated, lessons are not.** When a later lesson sharpens a concept, edit the card in place and bump the date.
- **Print test.** If it would not survive being printed and pinned above a desk, it is not finished.

## HTML companion

When a card holds a formula, a calculation or a decision procedure that is easier to grasp by playing with it, also write `{slug}.html` next to it: one self-contained page (inline CSS and JS, no network) with the same content plus a small calculator, slider or clickable decision tree, readable in light and dark mode and printable. The Markdown card stays the source of truth; regenerate the HTML whenever the card changes, and skip it for cards that are plain lists.
