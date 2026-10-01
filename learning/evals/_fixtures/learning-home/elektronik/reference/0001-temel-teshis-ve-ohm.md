# Kart 0001 — Temel Teşhis Sırası + Ohm Kanunu Gerçek Hayatta

## Ohm kanunu, gerçek elemanlarla
- Elemanlar ideal değil: LED sabit gerilim düşer (Vf), sonra akım hızla artar.
- LED direnci: **R = (V_kaynak − Vf) / I_hedef**
  - Kırmızı LED Vf ≈ 1.8–2.2V, beyaz/mavi ≈ 3.0–3.4V, tipik I = 10–20mA.
  - Örnek: 9V pil, kırmızı LED, 15mA → R = (9 − 2) / 0.015 ≈ 470Ω.

## Teşhis eleme sırası ("hiç tepki yok" cihaz)
1. **Çevre**: prizi başka cihazla doğrula.
2. **En ucuz eleman**: kablo/fiş — multimetre süreklilik modu, uçtan uca.
3. **Giriş koruması**: sigorta / termal sigorta (kettle'da 1 numaralı şüpheli).
4. **İç devre**: ancak güvenlik bilgisiyle (fiş çekik, kondansatörler deşarj).

## Güvenlik ön-kural (henüz işlenmedi, sonraki oturum)
Fişi çekilmiş cihazda bile büyük kondansatörler şarjlı olabilir. 220V taşıyan cihaz açmak = önce güvenlik modülü.

## Birincil kaynak
Geier, *How to Diagnose and Fix Everything Electronic* — böl. güvenlik + teşhis akışı.

## Recall soruları (sonraki oturum başı)
1. 5V kaynak, beyaz LED (Vf≈3.2V), 10mA hedef — direnç kaç ohm?
2. "Hiç tepki vermeyen" cihazda cihaza dokunmadan önce ilk kontrol nedir?
3. Fişi çekilmiş bir cihaz neden hâlâ tehlikeli olabilir?
4. Multimetrenin hangi modu kablo kopukluğunu bulur?
