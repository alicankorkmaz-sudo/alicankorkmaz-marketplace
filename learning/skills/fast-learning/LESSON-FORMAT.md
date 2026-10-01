# Lesson File Format

Lessons live in `./lessons/` as `NNNN-slug.md`, numbered from `0001` in the order taught. A lesson file records the lesson **as actually taught**, including the shortcuts used, every check result and the user's explain-back verbatim. It is the audit trail behind `SRS.md` and `GLOSSARY.md`.

## Template

```md
# Lesson {NNNN}: {Title}

_Date {YYYY-MM-DD} · Syllabus #{n} · Pace {fast | steady | slow} · Shortcuts: {from SHORTCUTS.md, e.g. skeleton first, analogy bridge} · Sources: {RESOURCES.md entries}_

## 1. Hook and prediction
{The one sentence tying this to the mission outcome.}
- Prediction asked: {question} → user guessed: {guess} (not graded)

## 2. Simple explanation
{The plain version as given, and how each shortcut was used (the analogy and where it breaks, the skeleton, the worked example). The worked real-world example, with its citation. How the prediction was resolved.}

## 3. Check
- Q: {question} → {hit | miss} {· asked why: {answer} → {sound | unsound}}
- Q: {question} → {hit | miss}
{Re-explanation given, if any, with the shortcut used, and the re-ask result.}

## 4. Deeper dive
{Common mistake · mechanism · the edge case the mission cares about.}

## 5. Exercise
{Task as set. Tool or explore page used. What the user produced or predicted, briefly. Feedback given.}

## 6. Explain-back (verbatim)
> {The user's explanation, unedited.}

Grade: correct {✓|✗} · complete for the mission {✓|✗} · term used properly {✓|✗} → **{PASS | FAIL}**
{If FAIL: the gap in one line, the re-explanation given, retest scheduled for next session.}

## 7. Interleave
From lesson {NNNN}: {question} → {hit | miss}

## Outcome
- SRS: {concept} → box 1 {| not entered, explain-back pending}
- Glossary: {term added | none}
- Field card: {items added to reference/{slug}.md | none}
- Syllabus status: {done | explain-back-pending}
- Shortcut note: {landed | flopped | —} {one line, copied to NOTES.md or LEARNER.md if it generalises}
```

## Rules

- **All seven sections, always.** An empty section means a step was skipped; the loop does not allow that.
- **The prediction is not graded.** Record the guess; it shows what the user's starting model was.
- **Name the shortcuts.** Which ones were used is what lets later sessions learn which ones land for this user.
- **Explain-back is verbatim.** Do not tidy the user's words. The wording is the evidence for the grade and the raw material for the glossary entry.
- **Grades are three separate marks.** Correct, complete for the mission, term used properly. Any ✗ is a FAIL.
- **Record the reason when "why?" was asked.** A right answer with an unsound reason is logged as a miss.
- **Never rewrite a lesson file.** A retest at the next session appends a dated "Retest" section under Explain-back with the new verbatim and grade.
- **Slug is stable.** Rename nothing; the reference card and SRS row link to it.
