# HTML Companion Format

An HTML companion is a page next to a Markdown card that does something text can't: let the learner manipulate a relationship, follow a procedure at the bench, or see a structure too big for a list. The medium doesn't teach; what the learner does with it does. So a page is written only when it enables an activity, and every page has exactly one type.

## Types

- **explore**: predict, then reveal. The page asks for a prediction (a typed number or a choice) before it shows any computed result; then it shows the result and the gap ("you said 300 Ω; it's 180 Ω, Vf missing"). After the reveal, sliders and inputs are free to play with. Used as the exercise of a lesson or the simulation rung of a challenge.
- **field**: a job aid for doing the real thing: a clickable decision tree, a lookup table, a calculator that answers freely. Its header says **Field card** (in the workspace language) so it is never mistaken for study material.
- **map**: the topic's skeleton as a diagram: the Pareto map in `fast-learning`, the skill map in `road-to-mastery`. Nodes are coloured by status. Optional; write it when the map has more than about twelve nodes.

## When to write one

- A formula or a quantity relationship worth feeling (how R changes with V and P) → **explore**.
- A procedure used with hands busy or under pressure (a diagnosis order, a pre-flight checklist) → **field**.
- A definition, a list, prose → no page. The Markdown card is enough.

## Rules

- **No recall questions on any page.** Recall happens in the conversation, where the answer and its reason can be graded and the retrieval queue (`SRS.md` in fast-learning, `RECALL.md` in road-to-mastery) updated. A question printed on a page the learner can't answer into is dead weight.
- **Never one click from a live answer.** A concept still in the retrieval queue below box 3 gets an **explore** page (gated by a prediction), never a **field** page that computes it. Once it reaches box 3, a field page is fine. Items offloaded to a field card are not in the queue, so their field pages can answer freely.
- **The protocol sends the learner there.** When a page is the exercise, give the path, say what to predict, and ask the learner to report their prediction and the gap in the conversation. A page nobody is sent to isn't written.
- **Coherence.** Every element carries meaning. No decoration, no hero images, no animation that doesn't show the mechanism.
- **Self-contained.** One file, inline CSS and JS, no network. Readable in light and dark mode, usable at phone width, with a print stylesheet that hides the controls.
- **Markdown is the source of truth.** Name the page `{card-slug}.html` beside its card (the map: `reference/map.html`). Regenerate it whenever the card changes.
- **Pages from earlier versions** that carry recall questions or ungated calculators for queued concepts: rewrite them to these rules the next time their card is touched.
