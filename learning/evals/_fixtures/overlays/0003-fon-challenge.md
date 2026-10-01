# Challenge 0003 — Fön makinesi: fan dönmüyor

**Tarih:** 2026-09-30
**Seviye hedefi:** Paralel kollara ayrılan bir cihazda arızalı kolu izole etmek.

## Bilgi bloğu (verilen)
Fön makinesinin iç yapısı: fiş → kablo → açma/kapama anahtarı → termal sigorta + bimetal termostat (seri koruma) → rezistans teli (ısıtıcı) ve küçük bir fan motoru. Fan, rezistansın üstüne hava üfler; fan durursa bimetal termostat birkaç saniyede açar.

## Senaryo
Fön makinesi: düğmeye basınca rezistans kızarıyor ama fan hiç dönmüyor; birkaç saniye sonra yanık kokusu geliyor ve ısıtma kesiliyor (bimetal açıyor). Fiş şimdi çekik, kasa açık.

**Soru:** Arıza nerede olabilir? Ölçüm planın ne (sıra, nokta, mod, beklenen değer)?

## Gizli unsur
Bu fönlerde fan motoru 230V AC ile değil, düşük gerilim **DC** ile çalışır: motor besleme gerilimi rezistansın bir bölümünden alınır ve motorun hemen yanındaki **4 diyotlu köprü doğrultucu** ile DC'ye çevrilir. Diyotlardan biri açık/kısa olursa rezistans ısınır ama motor dönmez. Naif plan sadece motora ve kablolarına bakar.

## Kullanıcının denemesi
_(bekleniyor)_
