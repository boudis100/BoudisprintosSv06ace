
# BoudisprintOS – Community Edition

BoudisprintOS is a community firmware extension based on Klipper, designed for **Sovol SV06 Ace** and **SV07** printers. It targets advanced users who want to unlock the full potential of their machine.

🌐 Live site: [https://boudis100.github.io/BoudisprintosSv06ace](https://boudis100.github.io/BoudisprintosSv06ace)

## 🧭 Introduction

This project offers a modern, customized experience with extended functionality:
- Optimized UI
- Input shaping
- Automatic PID tuning
- Control macros
- Notifications
- OTA updates

## 🔧 Requirements

| Component               | Recommended         |
|-------------------------|--------------------|
| Printer                 | Sovol SV06 Ace / SV07 |
| Board                   | Original Sovol MCU |
| ABL sensor              | Sovol original |
| ADXL345                 | Optional (for input shaping) |
| Web interface           | Fluidd (recommended) |

## 📦 Key Features

✅ Input Shaping (X/Y axis via ADXL345)  
✅ PID Autotune for hotend and bed  
✅ OTA updates (Git + Moonraker)  
✅ Macros for preheat, nozzle clean, auto leveling  
✅ Fluidd custom theme (blue-black)  
✅ Logo and custom startup screen  
✅ Email and webhook notification support  

## ⚙️ Installation

1. Flash Klipper using the [Sovol guide](https://github.com/Sovol3d/Sovol-SV06-Firmware).
2. Upload [`printer.cfg`](https://github.com/boudis100/BoudisprintosSv06ace/blob/main/printer.cfg).
3. Restart your printer via Fluidd / Moonraker.
4. Adjust `printer.cfg` based on your setup (hotend, fan, extruder).
5. Add optional macros to the configuration.

## 🛠️ User Macros

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

📂 More macros coming soon in `/macros` folder.

## 🎨 Fluidd UI

- Colors: dark background, blue highlights
- Logo: custom SVG / PNG in top-left corner
- Startup message: “Welcome to BoudisprintOS”

## ❓ FAQ

**Will this void my warranty?**  
This is unofficial firmware and is used at your own risk. It is not supported by Sovol.

**Can I contribute?**  
Absolutely! We welcome pull requests, bug reports, and community contributions.

**How do I get print completion notifications?**  
Configure webhooks in `moonraker.conf`. Supports email, Pushover, MQTT and more.

## 🔜 Upcoming Features

- Online `printer.cfg` configurator
- Automatic Pressure Advance calibration
- Video tutorials and reel previews
- Setup wizard for new users

## 🧑‍💻 Author

**Miroslav Bouda**  
GitHub: [@boudis100](https://github.com/boudis100)  
BoudisprintOS Project – 2025
