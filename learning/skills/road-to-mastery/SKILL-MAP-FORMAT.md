# SKILL-MAP.md Format

`SKILL-MAP.md` breaks the mission into the skills it is made of, with prerequisites and the user's current level on each, backed by evidence. It makes the zone of proximal development something you read off the map instead of guessing, and it shows the user the whole road and where they are on it.

## Template

```md
# Skill map: {Topic}

_Updated {YYYY-MM-DD} · Levels: unseen · knowledge · guided · independent · transfer_

| # | Skill | Needs | Mission | Level | Rung reached | Evidence |
|---|---|---|---|---|---|---|
| 1 | {skill, as a verb phrase} | — | {which "mastery looks like" bullet} | independent | bench | challenges/0004, LR-0006 |
| 2 | {skill} | 1 | {…} | guided | faded | challenges/0005 |
| 3 | {skill} | 1, 2 | {…} | unseen | — | — |

## Next (zone of proximal development)
- #{n} {skill} — {why now: prerequisites at independent, mission weight, what it unlocks}
```

## Levels

- **unseen** — not met yet.
- **knowledge** — can explain it; has seen a worked example.
- **guided** — solves it with a faded example, a hint or a knowledge block in front of them.
- **independent** — solves a challenge unaided, and, where the domain has one, at the bench or in the field.
- **transfer** — applies it unprompted in a new context, or uses it in real work outside the workspace.

## Rules

- **Skills are verb phrases.** "Diagnose a dead series circuit with a multimeter", not "series circuits".
- **8–20 nodes.** Fewer hides the road; more is a syllabus. Group by the mission's *mastery looks like* bullets.
- **Needs are prerequisites.** A node is ready when everything it needs is at *independent* or above. Safety nodes are prerequisites of every hands-on node in their domain.
- **Evidence on every level above unseen.** A challenge file, a learning record or a recall result. A level without evidence is a guess, and guesses wreck the zone of proximal development.
- **Levels go down too.** Two recall misses in a row or a failed challenge on a node at *independent* drops it to *guided*, with the evidence.
- **Next names one to three nodes.** Ready, weighted by the mission, preferring nodes that unlock others. Session start reads this section.
- **Rung reached** is the highest challenge rung passed on that node: worked · faded · scenario · simulation · bench · field (see the ladder in `SKILL.md`).
- **Update at session close.** The map is rewritten in place; history lives in challenges and learning records.
- **Show it in six lines** when presenting it in conversation: where the user is, what's next, how far the mission is. A **map** HTML companion ([HTML-COMPANION-FORMAT.md](./HTML-COMPANION-FORMAT.md)) is worth writing once the map has more than about twelve nodes.
- **Missing in an older workspace?** Build it at session start from `MISSION.md`, `BASELINE.md`, the learning records and the challenges, show it in six lines and let the user correct it before writing.
