# Changelog

All notable changes to the `learning` plugin are documented here.
Format: [Keep a Changelog](https://keepachangelog.com/en/1.1.0/). Versioning: [SemVer](https://semver.org). Tags: `vX.Y.Z`.

Before 0.2.0 the two skills shipped as separate plugins, `fast-learning` (0.1.0) and `road-to-mastery` (0.1.0, 0.1.1), with their own tags. Their history is kept below under those names.

## [Unreleased]

### Added
- `evals/`: an 18-case suite for `claude plugin eval` covering triggering and the Gotchas behaviours, with a fictional learner fixture.

## [0.4.1] - 2026-10-01

### Changed
- Skill descriptions are now trigger specs: "Use when…" comes first, with Turkish phrasings, resuming an existing workspace (a bare greeting, answering a challenge, asking for hands-on work) and a "Not for…" line. Before this, road-to-mastery didn't fire when a session opened with a plain greeting.
- The one-question-per-message rule also applies at the mission, placement and diagnosis steps.

## [0.4.0] - 2026-10-01

### Added
- A **Gotchas** section in both skills, from real sessions: list the facts a challenge or check depends on and teach the missing ones first; treat a miss on untaught material as curriculum (syllabus) debt rather than the user's gap; one question per message, with a structured choice tool for multiple-choice checks where the harness has one; safety as a prerequisite module in domains with physical risk.
- **HTML companion** for reference cards: when a card holds a formula, a calculation or a decision procedure, both skills also write a self-contained `{slug}.html` with a small calculator, slider or clickable decision tree. The Markdown card stays the source of truth.

### Changed
- Both skills run at `effort: medium` while active. Tutoring is an in-the-loop back-and-forth, so the session's higher default effort mostly added latency.

## [0.3.0] - 2026-09-29

### Added
- Multi-topic learning homes. Both skills resolve a topic directory at session start: the current directory if it already holds a topic, otherwise a subdirectory of the learning home matched by name or mission title, created as `./<slug>/` when new. With no topic given and several topics present, the skill lists them and asks.
- Conversion of a single-topic layout: naming a different topic in a directory that already holds one offers to move the existing learning files into `./<existing-slug>/` and open the new topic beside it, after showing the moves and getting a yes.
- `LEARNER.md` in the learning home for cross-topic preferences (language, pace, question style), read and written by both skills. Topic-specific preferences stay in `NOTES.md`.

### Changed
- `road-to-mastery` ignores a `MISSION.md` marked `<!-- fast-learning -->` and never shares a root with top-level `fast-learning` files; in a learning home it opens a sibling `<slug>-mastery/`.
- Existing single-topic workspaces keep working unchanged when opened without naming a different topic.

## [0.2.1] - 2026-09-29

### Fixed
- Both skills can be invoked by the model again (removed `disable-model-invocation`).

## [0.2.0] - 2026-09-03

### Changed
- Merged the `fast-learning` and `road-to-mastery` plugins into one plugin, `learning`, that ships both skills. Install once: `/plugin install learning@alicankorkmaz-marketplace`. Skills are now invoked as `/learning:fast-learning` and `/learning:road-to-mastery`.
- Single version, single changelog, single `LICENSE`; tags are now `vX.Y.Z`.
- Skill behaviour, format files and workspace layouts are unchanged; existing workspaces keep working.

### Removed
- The separate `fast-learning` and `road-to-mastery` plugins. Uninstall them and install `learning` instead.

## fast-learning [0.1.0] - 2026-09-03

### Added
- `fast-learning` skill: stateful, speed-first instruction with Phase 0 Mission, Phase 1 Placement, Phase 2 Syllabus, Phase 3 seven-step lesson loop (hook, simple explanation, check, deeper dive, exercise, graded explain-back, interleave), and session start/close rituals.
- Spaced-retrieval queue (`SRS.md`) with six boxes (next session, +2, +5, +12, +30 days, retired), miss-to-box-1 and two-misses-to-re-lesson rules, drilled from memory at every session start.
- Time budget discipline: planned lesson minutes capped at 80% of available minutes, fit check every session, dated Cuts and Deferred lists.
- Graduation rule (every load-bearing concept past SRS box 3) with two exits: weekly drills, or a hand-off to `road-to-mastery`.
- Format files: `MISSION-FORMAT.md`, `PLACEMENT-FORMAT.md`, `SYLLABUS-FORMAT.md`, `SRS-FORMAT.md`, `LESSON-FORMAT.md`, `REFERENCE-CARD-FORMAT.md`, `RESOURCES-FORMAT.md`, `GLOSSARY-FORMAT.md`.
- Coexistence with `road-to-mastery`: `<!-- fast-learning -->` marker on shared-name files and a workspace-root resolution rule that yields to an existing `road-to-mastery` workspace by using `./fast-learning/`.
- Claude Code plugin manifest; Codex `agents/openai.yaml`.
- Conversation mode for agents without filesystem access.

### Credits
- Workspace model and several format-file conventions adapted from Matt Pocock's `teach` skill (MIT).

## road-to-mastery [0.1.1] - 2026-09-03

### Changed
- Moved into the `alicankorkmaz-sudo/alicankorkmaz-marketplace` monorepo alongside `fast-learning`; the marketplace catalog now lives at that repo's root. Removed the plugin-local `marketplace.json` and release workflow.
- README install instructions point at the new marketplace repo.

## road-to-mastery [0.1.0] - 2026-09-03

### Added
- `road-to-mastery` skill: stateful mentorship with Phase 0 Mission, Phase 1 Foundation Assessment, Phase 2 Adaptive Challenge Loop, Phase 3 Elite Application Synthesis, and session start/close rituals with spaced recall.
- Format files: `MISSION-FORMAT.md`, `BASELINE-FORMAT.md`, `CHALLENGE-FORMAT.md`, `LEARNING-RECORD-FORMAT.md`, `RESOURCES-FORMAT.md`, `GLOSSARY-FORMAT.md`, `REFERENCE-CARD-FORMAT.md`.
- Claude Code plugin manifest and marketplace file; Codex `agents/openai.yaml`.
- Conversation mode for agents without filesystem access.

### Credits
- Workspace model, philosophy and several format files adapted from Matt Pocock's `teach` skill (MIT).

[Unreleased]: https://github.com/alicankorkmaz-sudo/alicankorkmaz-marketplace/compare/v0.3.0...HEAD
[0.3.0]: https://github.com/alicankorkmaz-sudo/alicankorkmaz-marketplace/releases/tag/v0.3.0
[0.2.1]: https://github.com/alicankorkmaz-sudo/alicankorkmaz-marketplace/compare/v0.2.0...v0.2.1
[0.2.0]: https://github.com/alicankorkmaz-sudo/alicankorkmaz-marketplace/releases/tag/v0.2.0
[fast-learning 0.1.0]: https://github.com/alicankorkmaz-sudo/alicankorkmaz-marketplace/releases/tag/fast-learning-v0.1.0
[road-to-mastery 0.1.1]: https://github.com/alicankorkmaz-sudo/alicankorkmaz-marketplace/releases/tag/road-to-mastery-v0.1.1
[road-to-mastery 0.1.0]: https://github.com/alicankorkmaz-sudo/road-to-mastery/releases/tag/v0.1.0
