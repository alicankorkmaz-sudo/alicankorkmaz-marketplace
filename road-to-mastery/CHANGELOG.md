# Changelog

All notable changes to this project are documented here.
Format: [Keep a Changelog](https://keepachangelog.com/en/1.1.0/). Versioning: [SemVer](https://semver.org).

## [Unreleased]

## [0.1.1] - 2026-09-03

### Changed
- Moved into the `alicankorkmaz-sudo/my-skill-marketplace` monorepo alongside `fast-learning`; the marketplace catalog now lives at that repo's root. Removed the plugin-local `marketplace.json` and release workflow. Tags are now `road-to-mastery-vX.Y.Z`.
- README install instructions point at the new marketplace repo.

## [0.1.0] - 2026-09-03

### Added
- `road-to-mastery` skill: stateful mentorship with Phase 0 Mission, Phase 1 Foundation Assessment, Phase 2 Adaptive Challenge Loop, Phase 3 Elite Application Synthesis, and session start/close rituals with spaced recall.
- Format files: `MISSION-FORMAT.md`, `BASELINE-FORMAT.md`, `CHALLENGE-FORMAT.md`, `LEARNING-RECORD-FORMAT.md`, `RESOURCES-FORMAT.md`, `GLOSSARY-FORMAT.md`, `REFERENCE-CARD-FORMAT.md`.
- Claude Code plugin manifest and marketplace file; Codex `agents/openai.yaml`.
- Conversation mode for agents without filesystem access.

### Credits
- Workspace model, philosophy and several format files adapted from Matt Pocock's `teach` skill (MIT).

[Unreleased]: https://github.com/alicankorkmaz-sudo/my-skill-marketplace/compare/road-to-mastery-v0.1.1...HEAD
[0.1.1]: https://github.com/alicankorkmaz-sudo/my-skill-marketplace/releases/tag/road-to-mastery-v0.1.1
[0.1.0]: https://github.com/alicankorkmaz-sudo/road-to-mastery/releases/tag/v0.1.0
