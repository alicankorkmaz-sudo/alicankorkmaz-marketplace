# Challenge Format

Challenges live in `./challenges/` and use sequential numbering: `0001-slug.md`, `0002-slug.md`. Create the directory lazily. Each file records one Phase 2 cycle end to end: the challenge, the attempt, the process narration, the feedback triad, and the calibration decision. This is the audit trail of the mentorship and the raw material for reference cards and learning records.

## Template

```md
# {Short title}

_Session {n} · Level: {just-above-baseline | stretch | phase-3 novel} · Principle: {the transferable principle, filled in after feedback}_

## Knowledge block
{The minimal knowledge issued before the challenge, with citations. Link to RESOURCES.md entries.}

## Challenge
{The scenario, as a practitioner would meet it. Real constraints, real noise.}

_Contains_: {hidden assumption | edge case | counter-intuitive twist — name which, privately; do not reveal to the user until feedback}

## Attempt
{The user's answer, verbatim or lightly condensed.}

## How they got there
{The user's own narration of their process, in response to the meta-cognition prompt.}

## Feedback
### (a) Reasoning
{Process feedback: what they noticed, what they missed, where reasoning was sound despite a wrong answer, where it was lucky despite a right one.}

### (b) Expert approaches
**Approach 1 — {name}:** {…} Trade-offs: {…}
**Approach 2 — {name}:** {…} Trade-offs: {…}

### (c) Transferable principle
{The pattern this instantiates, and one other context where it applies.}

## Calibration
{step up | step sideways | hold} — {one line of reasoning}

## Deferred notes
{Issues noticed but not raised, to avoid drowning the user. Revisit later.}
```

## Rules

- **One cycle per file.** A sideways re-run of the same principle is a new file that links back.
- **Write the "Contains" line before issuing the challenge.** If you cannot name the hidden assumption, edge case or twist, the challenge is not ready.
- **Two approaches means two.** Rephrasing one approach twice is not two. If the domain genuinely has one canonical approach, say so and instead contrast a naive approach with the expert one, explaining exactly where they diverge.
- **Feedback lands after narration.** Never write section (a) before the user has narrated their process.
