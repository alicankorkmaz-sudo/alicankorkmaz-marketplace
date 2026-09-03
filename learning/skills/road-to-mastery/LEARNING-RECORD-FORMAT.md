# Learning Record Format

Learning records live in `./learning-records/` and use sequential numbering: `0001-slug.md`, `0002-slug.md`. Create the directory lazily. They are the teaching equivalent of ADRs: non-obvious lessons, key insights and stated prior knowledge that steer future sessions. They are used, together with `BASELINE.md`, to compute the zone of proximal development and to decide when the user is ready for Phase 3.

## Template

```md
# {Short title of what was learned or established}

{1–3 sentences: what was learned (or what prior knowledge was established), and why it changes what to teach next.}
```

A record can be a single paragraph. The value is in recording _that_ this is now known and _why_ it matters, not in filling sections.

## Optional sections

- **Status** frontmatter (`active | superseded by LR-NNNN`): when an earlier understanding is replaced.
- **Evidence**: which challenge (`challenges/NNNN`) or recall question demonstrated it.
- **Implications**: what this unlocks or rules out. Include when non-obvious.

## When to write one

1. **Demonstrated understanding** of something non-trivial — evidence the user can use the concept, not mere exposure.
2. **Disclosed prior knowledge** — "I already know X." Record depth claimed so it isn't re-taught.
3. **Corrected misconception** — high value: predicts stumbling blocks in adjacent topics.
4. **Recall outcome** — a recall question missed twice in a row, or a principle the user reproduced unprompted in a new context.
5. **Mission shift** — cross-link to `MISSION.md`.
6. **Phase transition** — the record that justifies moving from Phase 2 to Phase 3 (or back).

### What does not qualify

- Material merely covered. Coverage is not learning.
- Anything already captured as a glossary term.
- Session-by-session activity logs. Challenges files are the log; records are decision-grade.

## Supersession

When a later record contradicts an earlier one, mark the old one `Status: superseded by LR-NNNN` rather than deleting it. How understanding evolved is itself signal.
