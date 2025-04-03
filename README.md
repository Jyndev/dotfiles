<a href="#">
    <img src="assets/jynprofile.png" alt="Aimeos logo" title="JynDev" align="right" height="60" />
</a>

# JynDev - Dotfiles 🚀
## Mi Configuración - Disponible para Todos 👨🏻‍💻🛠️

Este repositorio contiene mis dotfiles y configuraciones para Arch Linux con Hyprland. Como aún estoy aprendiendo, la instalación podría ser algo confusa, pero he intentado hacerla lo más clara posible.

### 📢 Sígueme en Redes Sociales

---

## 🖼️ Capturas de Pantalla
🌟 **Escritorio**
<div align="center">
<img src="assets/dk.png" width="45%"></img> <img src="assets/dk1.png" width="45%"></img> 
</div>


🌠 **Explorador de archivos (Nemo)**
<div align="center">
<img src="assets/file_explorer.png" width="45%"></img> <img src="assets/all_file_explorer.png" width="45%"></img> 
</div>

🐱‍💻 **Terminal (Kitty)**
<div align="center">
<img src="assets/kitty.png" width="45%"></img> <img src="assets/all_kitty.png" width="45%"></img> 
</div>

💫 **Lanzador de aplicaciones (Rofi)**
<div align="center">
<img src="assets/rofi.png" width="30%"></img> <img src="assets/all_rofi.png" width="60%"></img> 
</div>


✨ **Centro de Notificaciones (Swaync)**
<div align="center">
<img src="assets/swaync.png" width="20%"></img> <img src="assets/all_swaync.png" width="65%"></img> 
</div>

🌃 **Barra de tareas (Waybar)**
<div align="center">
<img src="assets/waybar.png" width="100%"></img>
</div>
---

## 🛠️ Instalación

### ⚠️ Importante:

Antes de copiar los archivos de configuración, instala los paquetes necesarios.

### ⚙️ Configuración de la Terminal

1. Instalar los siguientes paquetes básicos:
   ```bash
   sudo pacman -S git zsh
   ```
2. Cambiar la shell por defecto:
   ```bash
   chsh -s /bin/zsh
   ```
3. Instalar **yay** (gestor de paquetes AUR):
   ```bash
   sudo pacman -S --needed base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
   ```
4. **🔃 Reinicia el sistema**
5. Instalar **Oh My ZSH** y configurar plugins:
   - **Plugins recomendados:**
     - `zsh-autosuggestions`
     - `zsh-syntax-highlighting`
     - `zsh-history-substring-search`
   - Edita el archivo `~/.zshrc` para agregarlos.
6. Instalar **Powerlevel10k** para mejorar el estilo de la terminal.

### 🏎️ Alias Útiles para `.zshrc`

```sh
alias install="sudo pacman -S"
alias aur_install="yay -S"
alias update="sudo pacman -Syu"
alias purge="sudo pacman -Rns"
```

---

## 🧰 Paquetes para Personalización

```bash
install chafa gnome-tweaks swww hyprlock neofetch rofi-wayland nemo cinnamon-translations \
waybar ttf-jetbrains-mono-nerd swaync zenity bc eog gnome-system-monitor evince openrgb \
xdg-desktop-portal-hyprland xdg-desktop-portal-gtk
```

```bash
aur_install wlogout hyprshot cava visual-studio-code-bin python-pywal16 mpvpaper
```

### 🎵 Música

```bash
aur_install spotify # Instalar e iniciar sesión
aur_install spotify-adblock # Bloquear publicidad
```

---

## 🎨 Temas y Personalización

- 🏙️ **Iconos:** `Magna-Dark-Icons`
- 🖍️ **Tema GTK:** `Lavanda-gtk-theme`
- 🗚 **Fuente:** `Century Gothic`
- 🖱️ **Cursor:** `Anya-cursor-v3`

### 📄 Fuentes Adicionales (Japonés)

```bash
install noto-fonts-cjk
install noto-fonts-emoji
install noto-fonts
```

---

## ✅ Pasos Finales

1. Copia los archivos de `.config` a tu directorio `~/.config`.
2. Crea los siguientes directorios en `~/.cache/`:
   - `hyprlock` (Fondo de pantalla de bloqueo)
   - `albumart` (Imágenes de las canciones en reproducción)
   - `liveWallpaper` (Fondos de pantalla animados)

---

## ⚠️ Primer Arranque

Debes inicializar los colores de **pywal** para evitar errores al reiniciar:

```bash
wal --cols16 -i "ruta_absoluta_de_tu_imagen"
```

---

## 🔒 Fondo de Pantalla en SDDM

El script de fondos de pantalla cambia dinámicamente el fondo de **SDDM**.

### Configuración

1. Ubicación del tema actual: `/usr/share/sddm/themes/sddm-astronaut-theme/Backgrounds`
2. Otorga permisos al directorio de configuración:
   ```bash
   sudo chmod 777 /usr/local/etc
   ```
3. Crea el directorio para SDDM:
   ```bash
   mkdir /usr/local/etc/sddm
   ```
4. Crea el enlace simbólico:
   ```bash
   sudo ln -s /usr/local/etc/sddm/sddm_background \
       /usr/share/sddm/themes/sddm-astronaut-theme/Backgrounds/background
   ```
5. Modifica la configuración del tema para usar el enlace simbólico:
   ```ini
   #################### Background ####################
   Background="Backgrounds/background"
   ```
6. **Ejecuta el script para cambiar el fondo de pantalla.**

---

## 🌎 Configuración de Aplicaciones con Wayland

Agrega estas opciones a los lanzadores de las aplicaciones para que reconozcan el tema GTK:

```bash
google-chrome-stable --ozone-platform=wayland
code --enable-features=WaylandWindowDecorations --ozone-platform=wayland
```

---

¡Listo! Ahora tu sistema debería estar completamente personalizado. 🚀

