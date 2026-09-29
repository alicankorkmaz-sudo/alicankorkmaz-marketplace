# MISSION.md Format

`MISSION.md` lives at the workspace root. It states the one concrete thing the user must be able to **do**, by when, with how much time. Every syllabus cut, every deferred concept and the graduation check trace back to it.

## Template

```md
<!-- fast-learning -->
# Mission: {Topic}

## Outcome
Be able to {do Y — a verb phrase a colleague could watch you perform} by {YYYY-MM-DD}.

## Deadline
{YYYY-MM-DD} — {stated by user | defaulted to four weeks from {first-session date}}

## Time budget
{N} h/week × {W} weeks left = {H} h total → {H × 60} min available → cap for planned lessons (80%): {min} min

## Done when
- [ ] {Observable check 1: something the user does, not something they know}
- [ ] {Check 2}
- [ ] {Check 3}

## Out of scope
- {Adjacent area} — {why it is not needed for the outcome}
```

## Rules

- **The first line is the marker `<!-- fast-learning -->`.** It is how this skill and `road-to-mastery` tell their workspaces apart. Never omit it.
- **Outcome is a verb, not a noun.** "Deploy a Django app to Fly.io with Postgres" beats "learn Django". If the user says "understand X", ask what they will do with X and write that.
- **Deadline always present.** None given → four weeks from the first session, and the file says it was defaulted so the user can correct it.
- **Time budget is arithmetic, not a wish.** Hours per week × weeks left, converted to minutes, times 0.8. This number bounds `SYLLABUS.md`.
- **Done-when checks are the graduation test.** Three to five, each observable. Graduation walks this list.
- **Out of scope is where the other 80% lives.** Name it so the user stops worrying about it.
- **Revise only with the user.** When the outcome or deadline moves, rewrite this file, re-run the fit check and log any cuts in `SYLLABUS.md`.
- **One mission per workspace.** Two outcomes means two workspaces: sibling directories in one learning home (see *Topics* in `SKILL.md`).
