# FACTS.md Format

`FACTS.md` is the index of the knowledge base. Every number, quote, incident or definition that might reach the stage or the Q&A gets one row. Knowledge-base questions are answered from here first, then from the note the row points to.

## Structure

```md
# Facts

| ID | Claim | Kind | Source | Confidence | Note | Used in |
|---|---|---|---|---|---|---|
| F001 | Experienced developers were 19% slower with AI tools while believing they were 20% faster | number | [METR, 2025](url) | strong | research/0001 | FLOW §2, slide 3 |
| F002 | "For a model that can change the eval, the eval is no longer a judge." | quote | [Speaker, talk title](url) | strong | research/0005 | FLOW §3, slide 6 |
| F003 | An AI agent deleted a production database during a code freeze | incident | [Outlet](url) | contested | research/0007 | If asked |

## Superseded
- F0xx → F0yy ({date}): {why: newer data, correction}.
```

## Columns

- **ID:** `F` + three digits, never reused.
- **Claim:** one sentence, precise enough to put on a slide. Numbers with their unit and population ("16 developers, 246 tasks").
- **Kind:** number · quote · incident · definition · finding · user (the user's own experience or claim).
- **Source:** the most primary source you could reach, linked. If you only reached secondary coverage, link that and say so in the note.
- **Confidence:** strong · medium · weak · contested (definitions in the skill's *Evidence Discipline*).
- **Note:** the research note that holds the detail and caveats.
- **Used in:** where it appears in `FLOW.md` (section, slide), or `If asked`, or empty.

## Rules

- **One fact per row.** Two numbers from the same study are two rows.
- **Quotes verbatim,** in the original language; the translation goes in the note or the flow.
- **Never edit a claim in place when it changes meaning.** Add a new row and move the old one to *Superseded*.
- **Keep `Used in` current** when `FLOW.md` changes; it is how the user sees which evidence carries which section.
