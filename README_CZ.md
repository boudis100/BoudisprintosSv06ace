
# BoudisprintOS – Community Edition

BoudisprintOS je komunitní firmware rozšíření postavené na Klipperu, určené pro tiskárny **Sovol SV06 Ace** a **SV07**. Zaměřuje se na pokročilé uživatele, kteří chtějí z tiskárny vytěžit maximum.

🌐 Live stránka: [https://boudis100.github.io/BoudisprintosSv06ace](https://boudis100.github.io/BoudisprintosSv06ace)

## 🧭 Úvod

Tento projekt nabízí moderní, přizpůsobené prostředí s rozšířenou funkcionalitou:
- Optimalizované UI
- Input shaping
- Automatické PID ladění
- Makra pro pohodlné ovládání
- Notifikace
- OTA aktualizace

## 🔧 Požadavky

| Komponenta              | Doporučeno         |
|-------------------------|--------------------|
| Tiskárna                | Sovol SV06 Ace / SV07 |
| Deska                   | Originální Sovol MCU |
| ABL senzor              | Originální Sovol |
| ADXL345                 | Volitelný (pro Input Shaping) |
| Web rozhraní            | Fluidd (doporučeno) |

## 📦 Hlavní funkce

✅ Input Shaping (X/Y kalibrace přes ADXL345)  
✅ PID Autotune pro hotend a bed  
✅ OTA aktualizace (Git + Moonraker)  
✅ Makra pro preheat, čištění trysky, auto leveling  
✅ Barevné téma Fluidd (modro-černé)  
✅ Logo a startovací obrazovka  
✅ Podpora e-mailových notifikací a webhooků  

## ⚙️ Instalace

1. Flashni Klipper podle [návodu Sovolu](https://github.com/Sovol3d/Sovol-SV06-Firmware).
2. Nahraj soubor [`printer.cfg`](https://github.com/boudis100/BoudisprintosSv06ace/blob/main/printer.cfg).
3. Restartuj tiskárnu přes Fluidd / Moonraker.
4. Uprav `printer.cfg` podle svého vybavení (hotend, fan, extruder).
5. Vlož volitelná makra do konfiguračního souboru.

## 🛠️ Uživatelská makra

```ini
[gcode_macro PREHEAT_PLA]
gcode:
    M104 S200
    M140 S60

[gcode_macro CLEAN_NOZZLE]
gcode:
    G1 X5 Y5 Z10 F3000
    M106 S255
```

📂 Více maker najdeš ve složce `/macros` (v budoucnu).

## 🎨 Fluidd vzhled

- Barvy: černé pozadí, modré akcenty
- Logo: vlastní SVG / PNG v levém horním rohu
- Úvodní hláška po startu: „Welcome to BoudisprintOS“

## ❓ Často kladené otázky

**Ztratím záruku?**  
Neoficiální firmware, použití je na vlastní riziko. Není podporováno Sovolem.

**Mohu přispět?**  
Ano! Vítáme pull requesty, bug reporty nebo sdílení v komunitě.

**Jak dostanu notifikaci o dokončení tisku?**  
Možno nakonfigurovat pomocí webhooku v `moonraker.conf`. Podpora např. pro e-mail, Pushover, MQTT.

## 🔜 Plánované funkce

- Konfigurátor `printer.cfg` online
- Automatické Pressure Advance ladění
- Video návody a reel ukázky
- Setup wizard pro nové uživatele

## 🧑‍💻 Autor

**Miroslav Bouda**  
GitHub: [@boudis100](https://github.com/boudis100)  
Projekt BoudisprintOS – 2025
