# 🌌 Dotfiles

My personal configuration files for an Arch Linux desktop environment. Built around the Hyprland dynamic tiling Wayland compositor with a dark, cohesive aesthetic.

---

## 🛠️ Components

| Component | Software | Description |
| :--- | :--- | :--- |
| **WM / Compositor** | `Hyprland` | Smooth, dynamic tiling Wayland compositor |
| **Bar** | `Waybar` | Highly customizable status bar |
| **Terminal** | `Kitty` | Fast, GPU-accelerated terminal emulator |
| **Launcher** | `Rofi` | Window switcher, application launcher, and dmenu replacement |
| **Notifications** | `Mako` | Lightweight notification daemon for Wayland |
| **Audio Routing** | `qpwgraph` | PipeWire Graph Qt GUI for audio/video patching |
| **System Monitor** | `btop` | Game-like terminal-based system monitor |
| **Visualizer** | `cava` | Console-based Audio Visualizer |
| **Clock** | `peaclock` | Responsive digital clock for the terminal |

---

## 📸 Preview

> `(/home/bamblurboo/pictures/hyprshot/2026-05-21-120737_hyprshot.png)`

---

## ⚙️ Structure

* `hypr/` - Core window manager keybinds, window rules, and animations.
* `waybar/` - Modules for network, volume, battery, and layout styling.
* `rofi/` - Customized application menus and themes.
* `script/` - Miscellaneous automation and utility scripts.
* `wallpaper/` - Curated backgrounds matching the overall theme colors.

---

## 🚀 Installation

> [!WARNING]
> Do not blind-clone these dotfiles directly onto your system. Review the configurations first and back up your existing files!

```bash
# Clone the repository
git clone [https://github.com/Onlaenvory/Dotfile.git](https://github.com/Onlaenvory/Dotfile.git)

# Navigate and inspect
cd Dotfile