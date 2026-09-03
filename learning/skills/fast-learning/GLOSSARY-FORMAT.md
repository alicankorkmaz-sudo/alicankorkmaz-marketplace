# GLOSSARY.md Format

`GLOSSARY.md` is the canonical vocabulary of this workspace. A term enters **only after the user passes explain-back on it**. The glossary is therefore a record of what the user can explain, not a list to study from.

## Template

```md
<!-- fast-learning -->
# Glossary: {Topic}

_{One line on scope. Terms enter on passed explain-back only.}_

**{Term}** _(en: {English term, if the working language differs})_
{One or two sentences. What it is and when you reach for it, built from the user's own passing explain-back, tidied.}
_Passed_: lesson {NNNN}, {YYYY-MM-DD} · _Card_: reference/{slug}.md · _Avoid_: {aliases not used in this workspace}
```

## Rules

- **The first line is the marker `<!-- fast-learning -->`.** The filename is shared with `road-to-mastery`.
- **Entry requires a PASS.** Correct, complete for the mission, term used properly. A failed explain-back leaves the term out until the retest passes.
- **Build the definition from the user's words.** Tidy grammar, keep their framing. Their explanation stuck; yours may not.
- **One or two sentences.** Longer belongs on the reference card.
- **Use the glossary's own terms inside definitions.** Terms not yet in the glossary are not used in definitions; that is a prerequisite-order check.
- **Be opinionated.** One canonical word; the rest are listed under Avoid.
- **Local language with the English term alongside** when the field's literature is English and the working language is not.
- **Never remove a term.** If an SRS drill shows the concept is lost, mark it `_Shaky since {date}_` and keep the entry; clear the mark when the re-lesson explain-back passes.
