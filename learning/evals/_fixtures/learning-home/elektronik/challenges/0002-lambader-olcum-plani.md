# Challenge 0002 — Lambader: ölçüm planı

**Tarih:** 2026-09-04
**Seviye hedefi:** Seri yol izolasyonu prensibini ölçüm planına dönüştürmek (0001'de atlanan kısım). Domain bilgisi (iç yapı + base rate) bu sefer bilgi bloğunda önceden verildi.

## Senaryo
Yanmayan lambader. Ampul başka lambada test edildi: sağlam. Priz test edildi: sağlam. Fiş çekik.
Yol: fiş → kablo (faz+nötr) → kablo üstü anahtar (sadece fazı keser) → duy → ampul.

## Soru
Ölçüm planı: sıra, ölçüm noktaları, mod, anahtar konumu; her ölçümün neyi elediği.

## Gizli unsurlar
- Anahtar sadece fazı keser → nötr damar da kopabilir; naif plan sadece faz/anahtar tarafına bakar.
- Duyun yaylı dip kontağı ezikse süreklilik ölçümü ampul takılı değilken yanıltıcı olabilir (mekanik temas sorunu).
- Anahtar konumunun ölçüm anlamını değiştirmesi (ON'da 0Ω, OFF'ta OL beklenir — ikisini de test etmek anahtarı tam eler).

## Kullanıcının denemesi
Şüpheli listesini tam çıkardı (fiş, kablo, anahtar, duy). Base rate yokken test maliyetine göre sıraladı (anahtar önce, "en hızlı denenir"). Kablo için süreklilik dedi. Duy testini bilmediğini dürüstçe söyledi. Eksik: ölçüm spesifikasyonu yok (noktalar, mod, anahtar konumu, beklenen değer); nötr damar tuzağını kaçırdı (anahtar sadece fazı keser).

## Feedback
- (a) 0001'e göre net ilerleme: tam enumerasyon + maliyet sıralı test. Zayıf: ölçümler assertion'sız; nötr hattı gözden kaçtı.
- (b) Uçtan uca çökert-sonra-böl (2 ölçümle tüm zincir) vs maliyet sıralı eleman eleman; duyda mekanik muayene (yaylı kontak).
- (c) Prensip: ölçüm = beklenen değeri önceden yazılmış assertion.

## Sonraki adım
Bir sonraki challenge: uçtan uca yaklaşımı kendisinin kurması beklenen, 4+ segmentli bir senaryo; nötr/dönüş hattı tuzağı tekrar sınanmalı.
