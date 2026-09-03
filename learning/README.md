# Learning

One Claude Code plugin, two stateful learning skills for coding agents:

- **`fast-learning`**: the fast lane. You say what you need to be able to do and by when; it places you, teaches only the 20% that unlocks that outcome, tests you from memory, spaces the retrieval across sessions and grades a Feynman explain-back after every lesson.
- **`road-to-mastery`**: the depth lane. It takes you from your current level to mastery of any topic (a language, a framework, negotiation, strength training) through a disciplined loop: mission → diagnosis → adaptive real-world challenges → multi-approach expert feedback → elite mental models → spaced recall.

Pick `fast-learning` when there is a date and a deliverable. Pick `road-to-mastery` when there is a craft and years. Both can be used in the same session.

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

## Install

### Claude Code (plugin marketplace)

```
/plugin marketplace add alicankorkmaz-sudo/alicankorkmaz-marketplace
/plugin install learning@alicankorkmaz-marketplace
```

Then, in the directory you want to use as the learning workspace:

```
/learning:fast-learning Deploy a FastAPI service to Fly.io with Postgres, by 1 October
/learning:road-to-mastery Rust ownership and borrowing
```

### Codex

Each skill directory ships `agents/openai.yaml`, so `skills/fast-learning/` and `skills/road-to-mastery/` work as Codex skills with explicit `$fast-learning` / `$road-to-mastery` invocation.

### Any agent that reads `SKILL.md`

Copy `skills/fast-learning/` and/or `skills/road-to-mastery/` into the place your agent reads skills from (for Claude Code without the plugin: `.claude/skills/<name>/`).

### Claude.ai / no filesystem

Paste the skill's `SKILL.md` as a project instruction. Both skills detect that they cannot write files and run in conversation mode, emitting their state files (syllabus, SRS queue, reference cards, learning records) as Markdown at the end of each session for you to save and paste back.

## fast-learning

### How a session runs

1. **Start (~5 min).** Reads the workspace, asks every SRS item due today from memory, checks that the remaining lessons still fit before the deadline, says what today covers.
2. **First session only.** Mission (outcome, deadline, hours per week) → placement test → syllabus shown in five lines → first lesson, all in one sitting.
3. **Lessons (2–3 per session).** Hook → simple explanation → check → deeper dive → exercise in the real tool → explain-back graded on three criteria → one interleaved recall question.
4. **Close (~3 min).** SRS due dates updated, reference card written, three lines: what you can now do, what is due next time, one thing to try before then.

### Workspace layout

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

## road-to-mastery

A hybrid of two things:

- **[Matt Pocock's `teach` skill](https://github.com/mattpocock/skills/tree/main/skills/productivity/teach)** (MIT): the stateful workspace, the knowledge / skills / wisdom philosophy, the zone of proximal development, trusted-resource discipline, glossary and learning records.
- **The *Road to Mastery* mentor prompt**: foundation assessment of thinking style, challenges built around hidden assumptions, edge cases and counter-intuitive twists, the mandatory meta-cognition prompt, the feedback triad (reasoning feedback + at least two expert approaches + transferable principle), and the elite synthesis phase.

### What it adds over `teach`

| `teach` | Road to Mastery |
|---|---|
| Lessons as HTML files | Challenges as Markdown audit trail, reference cards as printable Markdown |
| Implicit assessment via learning records | Explicit Phase 1 diagnosis of level *and thinking style* → `BASELINE.md` |
| "Tight feedback loop" (unspecified) | Feedback triad: process feedback, ≥2 genuinely different expert approaches, transferable principle |
| — | Meta-cognition prompt before every piece of feedback |
| — | Challenge design rules: hidden assumption / edge case / counter-intuitive twist, "step sideways not down" |
| — | Phase 3: top-performer mental models (graded by evidence), guided novel application, reflective synthesis |
| Spacing mentioned as principle | Spacing implemented: every reference card ends in 3–5 recall questions, asked from memory at the next session start |
| — | Conversation mode for agents without a filesystem |
| — | Language rule: mirror the user's language, switch when they switch |

Everything in `teach` that mattered is kept: never trust parametric knowledge, cite everything, glossary discipline, communities as the path to wisdom, quiz options of equal length so formatting leaks no clues.

### Workspace layout

```
MISSION.md            why you're doing this
BASELINE.md           where you stand and how you think
RESOURCES.md          trusted sources, mental-model sources, communities
GLOSSARY.md           canonical terms and transferable principles
NOTES.md              your preferences
challenges/           0001-…md  one file per challenge cycle
learning-records/     0001-…md  decision-grade insights
reference/            printable cards, each ending in recall questions
```

## Using both skills

Both use `MISSION.md`, `RESOURCES.md`, `GLOSSARY.md`, `NOTES.md` and `reference/`, and `road-to-mastery` treats whatever `MISSION.md` it finds as its own. So the two never share a root:

- Every shared-name file written by `fast-learning` starts with the line `<!-- fast-learning -->`.
- If `fast-learning` finds a `road-to-mastery` workspace in the current directory (`BASELINE.md`, `challenges/`, `learning-records/`, or an unmarked `MISSION.md`), it keeps its own files under `./fast-learning/` and says so once.
- At graduation, the `fast-learning` hand-off to `road-to-mastery` always goes to a different directory.

Rule of thumb: one directory per skill per topic.

## Versioning and releases

- [Semantic versioning](https://semver.org). The version in `.claude-plugin/plugin.json` is the pin Claude Code uses: users get an update only when it changes. Both skills share it.
- Every release is an entry in [CHANGELOG.md](./CHANGELOG.md) ([Keep a Changelog](https://keepachangelog.com/en/1.1.0/) format) and a git tag `vX.Y.Z`. The marketplace repo's release workflow turns the tag into a GitHub Release with the changelog section as its body.
- Bumping: edit `plugin.json` version → move the Unreleased notes into a new CHANGELOG section → `git tag vX.Y.Z` → push tags.
- **Patch**: wording, typos, format-file tweaks. **Minor**: new step or phase behaviour, new format file, new workspace file. **Major**: a change that makes existing workspaces incompatible (renamed files, changed SRS box schedule, changed numbering).

## Contributing

Open an issue describing the teaching problem you hit, ideally with the lesson or challenge file that shows it. PRs that change a `SKILL.md` should say which learning need they serve: for `fast-learning`, which of the five speed levers, or which retention failure they prevent; for `road-to-mastery`, which of knowledge, skills or wisdom.

## License

MIT. The workspace model is derived from `mattpocock/skills` (MIT, © Matt Pocock); see [LICENSE](./LICENSE).
