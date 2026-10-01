#!/bin/bash
# Usage (from a case's fixture.sh): source "$(dirname "$0")/../_fixtures/setup-home.sh"
# Copies the learning home into the current (empty) run workspace.
# learning-home/ = a real road-to-mastery 'elektronik' topic (copied 2026-10-01) with the
# teaching-rule lines (one question per message, curriculum debt, safety first) removed
# from LEARNER.md / NOTES.md, so cases measure the skill text, not the learner's notes.
set -euo pipefail
FIX="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cp -R "$FIX/learning-home/." .
TODAY="$(date +%F)"
