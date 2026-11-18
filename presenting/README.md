# presenting

One skill, `talk-studio`, for preparing a talk the way you would run a small project: across several sessions, with research you can question and a plan you can perform.

| Skill | What it does | Invoke |
|---|---|---|
| [talk-studio](./skills/talk-studio) | Builds a graded research knowledge base, records the decisions you make along the way, and distils both into a narrative flow document. | `/presenting:talk-studio` |

## Install

```
/plugin marketplace add alicankorkmaz-sudo/alicankorkmaz-marketplace
/plugin install presenting@alicankorkmaz-marketplace
```

## How it works

Run it from a *talks home* (each talk gets a subdirectory) or from inside a talk's directory. Say what the talk is and who it is for; the skill interviews you briefly, then follows your lead. You never name a mode.

- **Bring an idea or a source** → it researches, writes one note per question in `research/`, and indexes every number, quote and incident in `FACTS.md` with its source and confidence.
- **Ask a question** ("what did that study measure?", "which numbers are vendor data?") → it answers from the workspace with citations, and says so when the answer isn't there.
- **Think aloud and decide** → settled points go into `DECISIONS.md` with your reason, so later sessions don't reopen them.
- **Ask for the structure** → it shows a skeleton table first; once you approve, it writes `FLOW.md`.
- **Bring notes on the flow** → it fills the gaps from the knowledge base, researching only what is missing.

Come back days later and say "let's continue": it reads the brief, decisions, open questions and the log, and picks up where you left off.

## The flow document

`FLOW.md` is a plan of the talk in performance order, not a script and not a topic summary. Each section has:

- the minutes it takes and what it is doing in the arc,
- how it opens (a story, a show of hands, a callback),
- what is said, with a line of background for every study, organisation or person cited,
- exactly what its slide shows,
- the question for the room,
- the bridge sentence into the next section.

It closes with an *If asked* table (research that didn't make it into the talk), the slide list and a time plan saying what to cut first.

## Stakes levels

`casual` (team chat, meetup), `standard` (internal presentation, client demo) and `high-stakes` (conference, board, pitch) set how deep the research goes, how strong the evidence on stage must be, and whether rehearsal notes and an objection map are added.

## Files

```
BRIEF.md            audience, purpose, format, stakes, constraints, your story
SOURCES.md          sources you brought and sources found, annotated and graded
research/NNNN-*.md  one note per research question
FACTS.md            index of every usable number, quote, incident, definition
DECISIONS.md        what was settled, and why
OPEN-QUESTIONS.md   what to verify, research, or ask you
FLOW.md             the flow document
LOG.md              one entry per session
```
