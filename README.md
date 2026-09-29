# alicankorkmaz-marketplace

Claude Code plugin marketplace. One plugin, [`learning`](./learning), with two stateful learning skills for coding agents. Same workspace model, opposite optimisation.

| Skill | Optimised for | Invoke |
|---|---|---|
| [fast-learning](./learning/skills/fast-learning) | Speed: be able to *do Y by Z*. Placement test, 20% syllabus, retrieval checks, spaced-retrieval queue, graded explain-backs. | `/learning:fast-learning` |
| [road-to-mastery](./learning/skills/road-to-mastery) | Depth: long-term expertise. Diagnosis, adaptive real-world challenges, multi-approach expert feedback, elite mental models. | `/learning:road-to-mastery` |

## Install

```
/plugin marketplace add alicankorkmaz-sudo/alicankorkmaz-marketplace
/plugin install learning@alicankorkmaz-marketplace
```

Both skills can be used in the same session. Run them from a *learning home* and each topic gets its own subdirectory (`learning/elektronik/`, `learning/japonca/`), with cross-topic preferences in `LEARNER.md`; `fast-learning` yields to an existing `road-to-mastery` workspace by keeping its files under `./fast-learning/`. Details in the [plugin README](./learning/README.md).

Upgrading from the old separate plugins: `/plugin uninstall fast-learning@alicankorkmaz-marketplace`, `/plugin uninstall road-to-mastery@alicankorkmaz-marketplace`, then install `learning`. Existing workspaces are untouched.

## Layout

```
.claude-plugin/marketplace.json   the catalog; one local-source plugin
learning/                         plugin: manifest, README, changelog, license
learning/skills/fast-learning/    skill + format files
learning/skills/road-to-mastery/  skill + format files
```

## Releases

One version for the plugin (SemVer, pinned by `learning/.claude-plugin/plugin.json`, Keep a Changelog). Tags are `vX.Y.Z`; the release workflow checks the tag against `plugin.json` and publishes the matching changelog section as a GitHub Release. Older `fast-learning-v*` and `road-to-mastery-v*` tags are history from before the merge.

## License

MIT. See [learning/LICENSE](./learning/LICENSE).
