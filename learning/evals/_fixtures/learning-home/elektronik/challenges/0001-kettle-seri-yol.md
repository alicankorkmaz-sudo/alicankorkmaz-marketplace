# Challenge 0001 — Kettle: seri yolda kopukluk

**Tarih:** 2026-09-04
**Seviye hedefi:** Seri devre yolunu segmentlere bölerek arıza izolasyonu (binary search).

## Senaryo
Fişi çekik, açılmış kettle. Ölçümler:
- Kablo damarları: süreklilik OK.
- Isıtıcı eleman: 26Ω (2kW/230V için beklenen değer).
- Düğme ON iken faz pimi → eleman giriş terminali: açık devre (OL).

**Soru:** Arıza nerede olabilir? Sonraki ölçüm ne olur ve neden?

## Gizli unsur
Faz yolu üzerinde kablo ile eleman arasında seri duran görünmez elemanlar var: termal sigorta ve düğme kontakları. Naif cevap "eleman bozuk" derdi ama eleman zaten OK ölçüldü; kopukluk aradaki seri segmentte. Beklenen uzman hamlesi: yolu ikiye bölüp (termal sigorta uçları, düğme kontakları ayrı ayrı) OL veren segmenti izole etmek.

## Kullanıcının denemesi
Eleme yaptı: kablo OK, eleman OK → kopukluk arada; şüpheli olarak düğmeyi gösterdi. Termal sigortayı düşünmedi; "sonraki ölçüm" kısmını atladı. Kapalı/açık devre kavramını doğru kullandı.

## Feedback
- (a) Eleme çıkarımı sağlam; şüpheli listesi eksik (termal sigorta = base-rate şampiyonu), hipotez ölçümle kapatılmadı.
- (b) İki yaklaşım verildi: segment bisection vs base-rate-first; ideali birleşimi.
- (c) Prensip: seri yolda arıza izolasyonu = bisection + base rate (tarifte hatalı adımı ikiye bölerek bulma analojisi).

## Sonraki adım
Aynı prensibi farklı senaryoda pekiştir (yanlamasına adım): çok segmentli seri yol + ölçüm planı isteyen challenge.
