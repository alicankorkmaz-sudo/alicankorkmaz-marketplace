# Kart 0002 — Seri Yolda Arıza Teşhisi

## Teşhis algoritması
1. **Çevreyi ele:** priz + ampul/yük başka yerde test.
2. **Uçtan uca çökert:** zincirin iki ucunu ölç (faz hattı: anahtar ON; dönüş/nötr hattı ayrıca!). Öterse kopukluk yok → mekanik temas ara.
3. **OL veren hattı bisect et:** segment segment; base rate varsa en olası segmentten, yoksa test maliyeti en düşük olandan başla.
4. **Gözle muayene:** her arıza elektriksel değildir — ezik yaylı kontak, kopmuş yay, oksitlenme.

## Ölçüm = assertion
Format: *X–Y arası, [mod], [anahtar konumu] → beklenen: [değer].*
- Anahtar ON → 0Ω; anahtar OFF → OL. İkisi birden tutarsa anahtar tamamen elendi.
- Beklenen değer yazılmadan yapılan ölçüm, assertion'sız test.

## Tuzaklar
- Anahtar sadece **fazı** keser; **nötr damar** ayrı yol, o da kopar.
- Süreklilik/Ω sadece **enerjisiz** devrede.
- Rezistif ısıtıcı beklenen direnci: R = V²/P (2kW @230V ≈ 26Ω).

## Birincil kaynak
Geier, *How to Diagnose and Fix Everything Electronic* — teşhis akışı bölümü.

## Recall soruları (sonraki oturum başı)
1. 5V kaynak, beyaz LED (Vf≈3.2V), 10mA → direnç kaç ohm? *(0001'den devir)*
2. Lambaderde faz tarafı tertemiz çıktı ama lamba yanmıyor — hangi hattı unuttun?
3. Anahtarı "tamamen elendi" diyebilmek için hangi İKİ ölçüm gerekir?
4. Uçtan uca ölçüm ötüyor ama cihaz çalışmıyor — arıza türü ne olabilir?
5. Fişi çekilmiş SMPS'li cihaz neden hâlâ tehlikeli? *(0001'den devir)*
