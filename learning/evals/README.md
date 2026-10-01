# Evals

18 cases for the two skills: triggering (fast-learning, road-to-mastery or neither, Turkish and English) and behaviour (recall first at session start, one question per message, untaught facts supplied with the challenge, curriculum debt vs gap, safety before hands-on, no shared root). Cases are tagged `train` or `test` so a skill-text change can be checked for overfitting.

Run from `learning/`:

```sh
claude plugin eval . --runs 2 --ablation none --judge-model sonnet --scaffold --trust-plugin --allow-tools Write Edit --threshold 0 -j 4
```

`--scaffold` is required: several cases build a learning-home fixture from `_fixtures/` (a fictional learner). `score.py OUT.json RESULTS_DIR...` re-judges stored replies with the current grader files (sonnet, best of 3), so runs from different days are scored the same way.
