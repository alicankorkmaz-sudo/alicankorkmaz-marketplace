# alicankorkmaz-marketplace

Claude Code plugin marketplace with two plugins of stateful skills for coding agents. Each keeps its state on disk, so the work grows across sessions.

| Plugin | Skill | What it does | Invoke |
|---|---|---|---|
| [`learning`](./learning) | [fast-learning](./learning/skills/fast-learning) | Speed: be able to *do Y by Z*. Placement test, 20% syllabus, retrieval checks, spaced-retrieval queue, graded explain-backs. | `/learning:fast-learning` |
| | [road-to-mastery](./learning/skills/road-to-mastery) | Depth: long-term expertise. Diagnosis, adaptive real-world challenges, multi-approach expert feedback, elite mental models. | `/learning:road-to-mastery` |
| [`presenting`](./presenting) | [talk-studio](./presenting/skills/talk-studio) | Prepare a talk across sessions: graded research knowledge base you can question, decisions log, and a narrative flow document. | `/presenting:talk-studio` |

## Install

```
/plugin marketplace add alicankorkmaz-sudo/alicankorkmaz-marketplace
/plugin install learning@alicankorkmaz-marketplace
/plugin install presenting@alicankorkmaz-marketplace
```

**learning:** Both skills can be used in the same session. Run them from a *learning home* and each topic gets its own subdirectory (`learning/elektronik/`, `learning/japonca/`), with cross-topic preferences in `LEARNER.md`; `fast-learning` yields to an existing `road-to-mastery` workspace by keeping its files under `./fast-learning/`. Details in the [plugin README](./learning/README.md).

Upgrading from the old separate plugins: `/plugin uninstall fast-learning@alicankorkmaz-marketplace`, `/plugin uninstall road-to-mastery@alicankorkmaz-marketplace`, then install `learning`. Existing workspaces are untouched.

**presenting:** Run `talk-studio` from a *talks home* (one subdirectory per talk) or inside a talk's directory. Details in the [plugin README](./presenting/README.md).

## Layout

```
.claude-plugin/marketplace.json   the catalog; two local-source plugins
learning/                         plugin: manifest, README, changelog, license, evals
learning/skills/fast-learning/    skill + format files
learning/skills/road-to-mastery/  skill + format files
presenting/                       plugin: manifest, README, changelog, license
presenting/skills/talk-studio/    skill + format files
```

## Releases

Each plugin has its own version (SemVer, pinned by its `.claude-plugin/plugin.json`, Keep a Changelog). Tags: `vX.Y.Z` for `learning`, `presenting-vX.Y.Z` for `presenting`. The release workflow checks the tag against the plugin's `plugin.json` and publishes the matching changelog section as a GitHub Release. Older `fast-learning-v*` and `road-to-mastery-v*` tags are history from before the merge.

## License

MIT. See [learning/LICENSE](./learning/LICENSE) and [presenting/LICENSE](./presenting/LICENSE).
