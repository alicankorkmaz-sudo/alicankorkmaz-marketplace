#!/bin/bash
source "$(dirname "$0")/../_fixtures/setup-home.sh"
cp "$FIX/overlays/0003-guvenlik-card.md" elektronik/reference/0003-sebeke-guvenligi.md
cp "$FIX/overlays/0003-fon-challenge.md" elektronik/challenges/0003-fon-makinesi.md
printf "\n- %s: recall soruları soruldu (kart 0003), 3/3 doğru. Challenge 0003 verildi, deneme bekleniyor.\n" "$TODAY" >> elektronik/NOTES.md
