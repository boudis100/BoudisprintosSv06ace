#!/bin/bash

# BoudisprintOS OTA update script
# GitHub: https://github.com/boudis100/BoudisprintosSv06ace

echo "=== BoudisprintOS: Zahajuji OTA aktualizaci... ==="

# Vytvoření zálohy aktuální konfigurace
BACKUP_DIR="$HOME/klipper_config_backup_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$BACKUP_DIR"
cp -r ~/klipper_config/*.cfg "$BACKUP_DIR" 2>/dev/null
cp ~/klipper_config/*.json "$BACKUP_DIR" 2>/dev/null
echo "✔ Záloha aktuální konfigurace uložena do $BACKUP_DIR"

# Stáhnutí nových souborů z GitHubu
cd ~/klipper_config
wget -O printer.cfg https://raw.githubusercontent.com/boudis100/BoudisprintosSv06ace/main/printer.cfg
wget -O maintenance.cfg https://raw.githubusercontent.com/boudis100/BoudisprintosSv06ace/main/maintenance.cfg
wget -O maintenance_dashboard.json https://raw.githubusercontent.com/boudis100/BoudisprintosSv06ace/main/maintenance_dashboard.json
wget -O ota_update_dashboard.json https://raw.githubusercontent.com/boudis100/BoudisprintosSv06ace/main/ota_update_dashboard.json

echo "✔ Nové soubory byly staženy z GitHubu"

# Restart Klipperu a Moonrakeru
sudo service klipper restart
sudo service moonraker restart

echo "=== Aktualizace BoudisprintOS dokončena ✅ ==="
