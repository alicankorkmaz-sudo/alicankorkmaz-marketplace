# RESOURCES.md Format

`RESOURCES.md` is the curated set of high-trust sources for this mission. It is populated **before** the placement test, because the candidate concept list is drafted from it, and every explanation and worked example cites it. Parametric memory is not a source.

## Template

```md
<!-- fast-learning -->
# Resources: {Topic}

_Updated {YYYY-MM-DD}_

## Core (cited in lessons)
- [{Title}]({url}) — {type: official docs | book | paper | talk | reference implementation}
  Why trusted: {primary source / author's standing / peer-reviewed}. Use for: lessons {n–m}. Skip: {chapters or sections the mission does not need}.

## Later (for depth)
- [{Title}]({url}) — {type}
  {One line: what it adds beyond the mission. Hand to road-to-mastery if the user continues.}

## Rejected
- {Source} — {why not: outdated / secondary / marketing / contradicted by the primary source}

## Gaps
- {Something the syllabus needs that no trusted source covers yet. Drives the next search.}
```

## Rules

- **The first line is the marker `<!-- fast-learning -->`.** The filename is shared with `road-to-mastery`.
- **Populate before teaching.** Empty `RESOURCES.md` means the first job of the first session is a search, not a lesson.
- **High-trust only.** Official documentation, primary sources, recognised experts, peer-reviewed work. Marketing dressed as education stays out.
- **Annotate every entry.** A bare link is useless in three weeks. "Use for" and "Skip" are what make a source fast.
- **Core is small.** Three to six sources. If a lesson needs a seventh, add it and consider retiring one.
- **Version-pin when it matters.** For tools and frameworks, note the version the source documents and the version the mission targets.
- **Rejected is not optional.** Recording why a popular source was rejected stops the user from reaching for it later.
- **Surface gaps explicitly.** A gap in resources is a gap in the syllabus.
