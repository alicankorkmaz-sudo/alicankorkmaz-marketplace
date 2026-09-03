# Road to Mastery

A stateful mentorship skill for coding agents. It takes you from your current level to mastery of any topic — a language, a framework, negotiation, strength training — through a disciplined loop: **mission → diagnosis → adaptive real-world challenges → multi-approach expert feedback → elite mental models → spaced recall.**

It is a hybrid of two things:

- **[Matt Pocock's `teach` skill](https://github.com/mattpocock/skills/tree/main/skills/productivity/teach)** (MIT) — the stateful workspace, the knowledge / skills / wisdom philosophy, the zone of proximal development, trusted-resource discipline, glossary and learning records.
- **The *Road to Mastery* mentor prompt** — foundation assessment of thinking style, challenges built around hidden assumptions, edge cases and counter-intuitive twists, the mandatory meta-cognition prompt, the feedback triad (reasoning feedback + at least two expert approaches + transferable principle), and the elite synthesis phase.

## What it adds over `teach`

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

## Install

### Claude Code (plugin marketplace)

```
/plugin marketplace add alicankorkmaz-sudo/alicankorkmaz-marketplace
/plugin install road-to-mastery@alicankorkmaz-marketplace
```

Then, in a directory you want to use as the learning workspace:

```
/road-to-mastery Rust ownership and borrowing
```

### Codex

The skill ships `agents/openai.yaml`, so the same directory works as a Codex skill with explicit `$road-to-mastery` invocation.

### Any agent that reads `SKILL.md`

Copy `skills/road-to-mastery/` into the place your agent reads skills from (for Claude Code without the plugin: `.claude/skills/road-to-mastery/`).

### Claude.ai / no filesystem

Paste `skills/road-to-mastery/SKILL.md` as a project instruction. The skill detects it cannot write files and runs in conversation mode, emitting the reference card and learning records as Markdown at the end of each session for you to save.

## Workspace layout

After a few sessions your directory looks like:

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

## Versioning and releases

- [Semantic versioning](https://semver.org). The version lives in `.claude-plugin/plugin.json` and is the pin Claude Code uses: users get an update only when it changes.
- Every release is a git tag `road-to-mastery-vX.Y.Z` in the marketplace repo and an entry in [CHANGELOG.md](./CHANGELOG.md) (Keep a Changelog format).
- Bumping: edit `plugin.json` version → add CHANGELOG entry → `git tag road-to-mastery-vX.Y.Z` → push tags. The marketplace repo's release workflow turns the tag into a GitHub Release with the changelog section as its body.
- **Patch**: wording, typos, format-file tweaks. **Minor**: new phase behaviour, new format file, new workspace file. **Major**: a change that makes existing workspaces incompatible (renamed files, changed numbering).

## Contributing

Open an issue describing the teaching problem you hit, ideally with the challenge file that shows it. PRs that change `SKILL.md` should say which of the three learning needs (knowledge, skills, wisdom) they serve.

## License

MIT. Derived in part from `mattpocock/skills` (MIT, © Matt Pocock); see [LICENSE](./LICENSE).
