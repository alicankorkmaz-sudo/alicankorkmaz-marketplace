# Challenge Format

Challenges live in `./challenges/` and use sequential numbering: `0001-slug.md`, `0002-slug.md`. Create the directory lazily. Each file records one Phase 2 cycle end to end, on one rung of the ladder: the challenge (or worked/faded example), the attempt, the process narration, the feedback triad, and the calibration decision. This is the audit trail of the mentorship and the raw material for reference cards and learning records.

## Template

```md
# {Short title}

_Session {n} · Node: SKILL-MAP #{n} {skill} · Rung: {worked | faded | scenario | simulation | bench | field} · Level: {just-above-baseline | stretch | phase-3 novel} · Shortcuts: {from SHORTCUTS.md} · Principle: {the transferable principle, filled in after feedback}_

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
User's version: {the rule in their own words, verbatim}
Refined: {confirmed, sharpened or corrected; canonical name; one other context where it applies}

## Calibration
{climb a rung | step up | step sideways | drop a rung | hold} — {one line of reasoning} · SKILL-MAP #{n}: {old level} → {new level}

## Deferred notes
{Issues noticed but not raised, to avoid drowning the user. Revisit later.}
```

## Rules

- **One cycle per file.** A sideways re-run of the same principle is a new file that links back.
- **Worked and faded rungs use the same file, lighter.** *Challenge* holds the example (with the blank steps, for faded); *Attempt* holds the user's "why this step?" answer or completed steps. *Contains*, *How they got there* and *Expert approaches* may be omitted.
- **Bench and field rungs record evidence.** Readings, photos described, output pasted, what the real system did. A bench attempt without evidence is a scenario attempt.
- **Write the "Contains" line before issuing the challenge.** If you cannot name the hidden assumption, edge case or twist, the challenge is not ready.
- **Two approaches means two.** Rephrasing one approach twice is not two. If the domain genuinely has one canonical approach, say so and instead contrast a naive approach with the expert one, explaining exactly where they diverge.
- **Feedback lands after narration.** Never write section (a) before the user has narrated their process.
- **The principle is the user's first.** Record their version verbatim before your refinement; the gap between the two is the coaching signal.
