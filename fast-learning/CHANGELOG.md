# Changelog

All notable changes to this plugin are documented here.
Format: [Keep a Changelog](https://keepachangelog.com/en/1.1.0/). Versioning: [SemVer](https://semver.org). Tags: `fast-learning-vX.Y.Z`.

## [Unreleased]

## [0.1.0] - 2026-09-03

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
