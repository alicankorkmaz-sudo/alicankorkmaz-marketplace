---
type: llm
---

The user is resuming a mentorship session. The workspace's reference cards end with these recall questions:

Card 0002 (latest):
1. 5V kaynak, beyaz LED (Vf≈3.2V), 10mA → direnç kaç ohm?
2. Lambaderde faz tarafı tertemiz çıktı ama lamba yanmıyor — hangi hattı unuttun?
3. Anahtarı "tamamen elendi" diyebilmek için hangi İKİ ölçüm gerekir?
4. Uçtan uca ölçüm ötüyor ama cihaz çalışmıyor — arıza türü ne olabilir?
5. Fişi çekilmiş SMPS'li cihaz neden hâlâ tehlikeli?
Card 0001 (older):
6. "Hiç tepki vermeyen" cihazda cihaza dokunmadan önce ilk kontrol nedir?
7. Multimetrenin hangi modu kablo kopukluğunu bulur?

PASS if the reply asks the user at least one of these recall questions (verbatim or a close paraphrase that tests the same fact) and the reply does not also pose a new challenge scenario/problem for the user to solve or teach new material. Merely announcing what later parts of the session will cover (e.g. "after the recall we'll do challenge 0003") is fine and does not count as posing a challenge.
FAIL if the reply asks none of these recall questions, or if it sets out a new challenge scenario/problem or a new knowledge block in this reply.
