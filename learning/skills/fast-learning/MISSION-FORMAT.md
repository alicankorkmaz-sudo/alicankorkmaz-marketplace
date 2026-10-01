# MISSION.md Format

`MISSION.md` lives at the workspace root. It states the one concrete thing the user wants to be able to **do** with the topic. Every pruning decision in the Pareto map and the graduation check trace back to it. There is no deadline and no time budget: pace is a preference in `NOTES.md`.

## Template

```md
<!-- fast-learning -->
# Mission: {Topic}

## Outcome
Be able to {do Y — a verb phrase a colleague could watch you perform}.

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
- **Understanding is allowed when it is observable.** Sometimes understanding is the goal (follow a design review, talk to a specialist). Write it as something a colleague could check: "explain how X works to a colleague in two minutes", "read a Y and spot Z".
- **The outcome is the pruning test.** A concept the outcome doesn't need is pruned or goes on a field card. A vague outcome prunes nothing, so sharpen it before building the map.
- **Done-when checks are the graduation test.** Three to five, each observable. Graduation walks this list.
- **Out of scope names the big areas you are not entering.** Individual concepts that were pruned live in `SYLLABUS.md`.
- **No dates here.** If the user mentions one (an interview, a first day), it goes in `NOTES.md` as context for pace.
- **Revise only with the user.** When the outcome moves, rewrite this file and re-sort the Pareto map in `SYLLABUS.md`.
- **One mission per workspace.** Two outcomes means two workspaces: sibling directories in one learning home (see *Topics* in `SKILL.md`).
