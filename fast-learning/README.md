# Fast Learning

A stateful learning skill for coding agents, optimised for **speed to functional competence**. You say what you need to be able to do and by when; the skill places you, teaches only the 20% that unlocks that outcome, tests you from memory, spaces the retrieval across sessions and grades a Feynman explain-back after every lesson.

It is the fast lane. Its sibling, **[road-to-mastery](../road-to-mastery)**, is the depth lane: challenge-first mentorship for long-term expertise. Both install from the same marketplace and can be used in the same session.

## Fast Learning vs. Road to Mastery

| | `fast-learning` | `road-to-mastery` |
|---|---|---|
| **Goal** | Be able to *do Y by Z*: functional competence by a deadline | Mastery: field-ready expertise, validated outside the workspace |
| **Engine** | Direct instruction, seven-step lesson loop, 15–25 min per lesson | Adaptive challenge loop: knowledge block → real-world challenge → feedback triad |
| **Assessment** | Placement test first (6–10 items, stop at three misses); per-lesson checks; graded explain-back | Diagnosis of level *and thinking style*; meta-cognition prompt before every piece of feedback |
| **Plan** | `SYLLABUS.md`: ordered lessons capped at 80% of available minutes, with Deferred and Cuts lists | Zone of proximal development computed from learning records; no fixed plan |
| **Retention** | `SRS.md` spaced-retrieval queue (six boxes, +2/+5/+12/+30 days), drilled at every session start | Recall questions on each reference card, asked at the next session start |
| **Session shape** | SRS drill → fit check → 2–3 lessons → card + due dates | Recall → knowledge block → challenge → attempt → feedback → calibrate |
| **Ending** | Graduation when every load-bearing concept survives SRS box 3; then hold with weekly drills or hand off to road-to-mastery | Phase 3 elite synthesis and a hand-off to a real-world community |

Pick `fast-learning` when there is a date and a deliverable. Pick `road-to-mastery` when there is a craft and years.

## Install

### Claude Code (plugin marketplace)

```
/plugin marketplace add alicankorkmaz-sudo/my-skill-marketplace
/plugin install fast-learning@alicankorkmaz-marketplace
```

`alicankorkmaz-sudo/my-skill-marketplace` is the GitHub repo whose root `.claude-plugin/marketplace.json` lists both `fast-learning` and `road-to-mastery` as local sources.

Then, in the directory you want to use as the learning workspace:

```
/fast-learning Deploy a FastAPI service to Fly.io with Postgres, by 1 October
```

### Codex

The skill ships `agents/openai.yaml`, so the same directory works as a Codex skill with explicit `$fast-learning` invocation.

### Any agent that reads `SKILL.md`

Copy `skills/fast-learning/` into the place your agent reads skills from (for Claude Code without the plugin: `.claude/skills/fast-learning/`).

### Claude.ai / no filesystem

Paste `skills/fast-learning/SKILL.md` as a project instruction. The skill detects it cannot write files and runs in conversation mode, emitting `SYLLABUS.md`, `SRS.md` and the reference card as Markdown at the end of each session for you to save and paste back.

## How a session runs

1. **Start (~5 min).** Reads the workspace, asks every SRS item due today from memory, checks that the remaining lessons still fit before the deadline, says what today covers.
2. **First session only.** Mission (outcome, deadline, hours per week) → placement test → syllabus shown in five lines → first lesson, all in one sitting.
3. **Lessons (2–3 per session).** Hook → simple explanation → check → deeper dive → exercise in the real tool → explain-back graded on three criteria → one interleaved recall question.
4. **Close (~3 min).** SRS due dates updated, reference card written, three lines: what you can now do, what is due next time, one thing to try before then.

## Workspace layout

After a few sessions your directory looks like:

```
MISSION.md            be able to do Y by Z, hours/week, done-when checks, out of scope
PLACEMENT.md          known / shaky / unknown / misconceptions, with evidence
SYLLABUS.md           ordered lessons, minutes, status; Deferred and Cuts lists
SRS.md                spaced-retrieval queue: box, due, last result, streak, card
RESOURCES.md          high-trust sources, every entry annotated
GLOSSARY.md           terms you have passed explain-back on
NOTES.md              your preferences
lessons/              0001-…md  one file per lesson as taught, explain-back verbatim
reference/            printable one-page cards, each ending in recall questions
```

### Coexistence with road-to-mastery

Both skills use `MISSION.md`, `RESOURCES.md`, `GLOSSARY.md`, `NOTES.md` and `reference/`, and `road-to-mastery` treats whatever `MISSION.md` it finds as its own. So the two never share a root:

- Every shared-name file written by `fast-learning` starts with the line `<!-- fast-learning -->`.
- If `fast-learning` finds a `road-to-mastery` workspace in the current directory (`BASELINE.md`, `challenges/`, `learning-records/`, or an unmarked `MISSION.md`), it keeps its own files under `./fast-learning/` and says so once.
- At graduation, the hand-off to `road-to-mastery` always goes to a different directory.

Rule of thumb: one directory per skill per topic.

## Versioning and releases

- [Semantic versioning](https://semver.org). The version in `.claude-plugin/plugin.json` is the pin Claude Code uses: users get an update only when it changes.
- Every release is an entry in [CHANGELOG.md](./CHANGELOG.md) ([Keep a Changelog](https://keepachangelog.com/en/1.1.0/) format) and a git tag `fast-learning-vX.Y.Z` in the marketplace repo. The prefix keeps this plugin's tags apart from `road-to-mastery`'s.
- Bumping: edit `plugin.json` version → move the Unreleased notes into a new CHANGELOG section → `git tag fast-learning-vX.Y.Z` → push tags.
- **Patch**: wording, typos, format-file tweaks. **Minor**: new step behaviour, new format file, new workspace file. **Major**: a change that makes existing workspaces incompatible (renamed files, changed box schedule, changed numbering).

## Contributing

Open an issue describing the teaching problem you hit, ideally with the lesson file that shows it. PRs that change `SKILL.md` should say which of the five speed levers they serve, or which retention failure they prevent.

## License

MIT. The workspace model is derived from `mattpocock/skills` (MIT, © Matt Pocock); see [LICENSE](./LICENSE).
