# BoudisprintosSv06ace
Custom sovol sv06 # 🟦 BoudisprintOS v1.0 – Vlastní Klipper distribuce pro Sovol SV06 Ace

Vítej v **BoudisprintOS v1.0** – vylepšené a vizuálně upravené verzi firmwaru Klipper optimalizované pro **Sovol SV06 Ace**, zaměřené na rychlý tisk, jednoduchou údržbu a moderní vzhled.

## 🔧 Hlavní vlastnosti

✅ **Vlastní úvodní obrazovka** s logem  
✅ **Modro-černé UI (Fluidd)** ve stylu Boudisprint  
✅ **Optimalizováno pro PLA, PETG a ASA**  
✅ **Makra pro údržbu, test extruderu, mazání a vyrovnání osy X**  
✅ **Vlastní panel „Údržba“ přímo ve Fluidd**  
✅ **Plně automatická OTA aktualizace přes GitHub**  
✅ **Přednastavené předehřevy, čistič trysky a bezpečnostní ## ⚙️ Jak nainstalovat

1. Zálohuj svou stávající konfiguraci
2. Nahraj všechny `.cfg` a `.json` soubory do složky `~/klipper_config`
3. Přidej do `moonraker.conf`:
   ```ini
   [shell_command UPDATE_OS]
   command: bash /home/pi/klipper_config/update.sh
   timeout: 60
