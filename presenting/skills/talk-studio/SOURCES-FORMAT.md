# SOURCES.md Format

`SOURCES.md` lists every source the knowledge base relies on, annotated so it is still useful in three months.

## Structure

```md
# Sources

## From the user
- [{Title}]({url or path}) — {what it is}. Why the user trusts it: {…}. Read: yes | partly | no.

## Primary
- [{Title} ({org or author}, {date})]({url}) — {one line: what it covers}. Grade: strong | medium.

## Secondary and commentary
- [{Title} ({outlet}, {date})]({url}) — {one line}. Covers: {which primary}. Grade: medium | weak.

## Gaps
- {A question the talk needs where no good source has been found yet.}
```

## Rules

- **Annotate every entry.** A bare link is useless later.
- **Vendor sources are marked as vendor** in the annotation ("vendor: sells AI code review").
- **Prefer the primary over its coverage.** When only coverage was reached, say which primary it reports on.
- **Local or internal sources** (a meeting transcript, an internal document) are listed by path and marked internal; they never go to external services.
