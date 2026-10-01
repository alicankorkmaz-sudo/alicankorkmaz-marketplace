#!/bin/bash
source "$(dirname "$0")/../_fixtures/setup-home.sh"
# single-topic layout: the elektronik topic is the cwd itself
mv elektronik/* . && rmdir elektronik
