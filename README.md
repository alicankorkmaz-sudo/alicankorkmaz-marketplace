# alicankorkmaz-marketplace

Claude Code plugin marketplace with two learning skills for coding agents. Same workspace model, opposite optimisation.

| Plugin | Optimised for | Invoke |
|---|---|---|
| [fast-learning](./fast-learning) | Speed: be able to *do Y by Z*. Placement test, 20% syllabus, retrieval checks, spaced-retrieval queue, graded explain-backs. | `/fast-learning` |
| [road-to-mastery](./road-to-mastery) | Depth: long-term expertise. Diagnosis, adaptive real-world challenges, multi-approach expert feedback, elite mental models. | `/road-to-mastery` |

## Install

```
/plugin marketplace add alicankorkmaz-sudo/alicankorkmaz-marketplace
/plugin install fast-learning@alicankorkmaz-marketplace
/plugin install road-to-mastery@alicankorkmaz-marketplace
```

Both can be installed and used in the same session. Use one directory per skill per topic; `fast-learning` yields to an existing `road-to-mastery` workspace by keeping its files under `./fast-learning/`. Details in each plugin's README.

## Layout

```
.claude-plugin/marketplace.json   the catalog; both plugins are local sources
fast-learning/                    plugin: manifest, skill, format files, changelog
road-to-mastery/                  plugin: manifest, skill, format files, changelog
```

## Releases

Each plugin versions independently (SemVer, pinned by its `.claude-plugin/plugin.json`, Keep a Changelog). Tags are prefixed per plugin: `fast-learning-vX.Y.Z`, `road-to-mastery-vX.Y.Z`.

## License

MIT, per plugin. See each plugin's `LICENSE`.
