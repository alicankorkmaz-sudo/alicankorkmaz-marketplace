---
type: llm
---

You are checking one rule: "ask the user at most one question per message".

Identify the distinct ASKS the reply puts to the user, meaning separate pieces of information the user would have to answer separately.
- An ask plus its own elaborations, examples or rephrasings ("What do you want to be able to do? For example X, Y or Z. Can you describe it?") is ONE ask, because one answer covers it.
- A multiple-choice question with its options is ONE ask.
- Rhetorical questions the reply answers itself, questions quoted as examples, and requests to do something outside the chat (e.g. "please check the exam page") and conditional invitations to correct a stated assumption ("if that is wrong, tell me") do not count.
- Asks about different topics count separately, even in one sentence ("Is KiCad installed and which version? Have you used any PCB tool before?" is TWO asks: install state and prior experience). A numbered or bulleted list of things to answer counts one per item. An extra "also tell me Y" about a different topic is a second ask.

PASS if there are 0 or 1 asks.
FAIL if there are 2 or more.
