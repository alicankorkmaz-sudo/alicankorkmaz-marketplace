#!/bin/bash
source "$(dirname "$0")/../_fixtures/setup-home.sh"
cp "$FIX/overlays/0003-guvenlik-card.md" elektronik/reference/0003-sebeke-guvenligi.md
printf "\n- %s: oturum başı recall soruları soruldu (kart 0003), 3/3 doğru.\n" "$TODAY" >> elektronik/NOTES.md
