#!/bin/bash
# Usage: source "$(dirname "$0")/../_fixtures/setup-fast-kicad.sh" <dest-dir>
# Writes a fast-learning topic (KiCad, 2 lessons done, 2 SRS items due today) into <dest-dir>.
set -euo pipefail
D="${1:-kicad-pcb}"; mkdir -p "$D/reference" "$D/lessons"
TODAY="$(date +%F)"
ago() { date -v-"$1"d +%F 2>/dev/null || date -d "-$1 day" +%F; }
ahead() { date -v+"$1"d +%F 2>/dev/null || date -d "+$1 day" +%F; }
cat > "$D/MISSION.md" <<MD
<!-- fast-learning -->
# Mission: KiCad ile basit PCB

**Outcome:** $(ahead 9) tarihine kadar basit bir devreyi (USB-C besleme + LED + direnç) KiCad'de şemadan 2 katmanlı karta çevirip Gerber üretip JLCPCB'ye sipariş verebilmek.
**Deadline:** $(ahead 9) · **Hours/week:** 6
## Done when
- Şema ERC hatasız.
- PCB DRC hatasız, Gerber + drill dosyaları JLCPCB görüntüleyicisinde doğru.
## Out of scope
- Kendi footprint kütüphanesi, 4 katman, PCBA.
MD
cat > "$D/SYLLABUS.md" <<MD
<!-- fast-learning -->
# Syllabus: KiCad ile basit PCB

_Deadline $(ahead 9) · Available 720 min · Cap (80%) 576 min · Planned 160 min · Updated $(ago 2)_

| # | Lesson | Unlocks | Min | Status |
|---|---|---|---|---|
| 1 | Proje yapısı, sembol yerleştirme, kablolama | Şema çizimi | 20 | done |
| 2 | Net etiketleri, güç sembolleri, ERC | Done-when 1 | 20 | done |
| 3 | Sembol → footprint ataması | PCB'ye geçiş | 20 | next |
| 4 | Kart sınırı, yerleşim, track genişliği | Routing | 25 | planned |
| 5 | DRC ve JLCPCB tasarım kuralları | Done-when 2 | 20 | planned |
| 6 | Gerber + drill üretimi ve sipariş | Outcome | 20 | planned |
MD
cat > "$D/SRS.md" <<MD
<!-- fast-learning -->
# SRS: KiCad ile basit PCB

_Boxes: 1 → next session · 2 → +2 days · 3 → +5 days · 4 → +12 days · 5 → +30 days · 6 → retired · Updated $(ago 2)_

| Concept | Box | Due | Last | Streak | Card |
|---|---|---|---|---|---|
| Net etiketi ile aynı isimli iki nokta bağlıdır | 2 | $TODAY | hit $(ago 2) | 1 | reference/0001-sema-temelleri.md |
| ERC "power input not driven" hatası ve PWR_FLAG | 1 | next session | miss $(ago 2) | 0 | reference/0001-sema-temelleri.md |
| Sembol ile footprint ayrı şeylerdir | 3 | $(ahead 3) | placement $(ago 2) | 0 | — |
MD
cat > "$D/PLACEMENT.md" <<MD
<!-- fast-learning -->
# Placement — $(ago 4)
- Known: sembol ≠ footprint farkı.
- Unknown: net etiketleri, ERC, footprint ataması, DRC, Gerber.
MD
cat > "$D/reference/0001-sema-temelleri.md" <<MD
# Kart 0001 — KiCad şema temelleri
- Aynı isimli net etiketleri, kablo çizilmeden bağlıdır.
- Güç pini sürülmüyorsa ERC "power input not driven" der; regülatör/konnektör çıkışına PWR_FLAG koy.
## Recall soruları
1. İki ayrı sayfadaki "VBUS" etiketli noktalar bağlı mı, neden?
2. ERC "power input not driven" hatası verdiğinde ne eklersin?
3. Sembol ile footprint arasındaki fark ne?
MD
printf '# Notes\n\n- Kısa ders, bol pratik.\n' > "$D/NOTES.md"
