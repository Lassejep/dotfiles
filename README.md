# dotfiles
Config files for my archlinux hyprland setup

## Dependencies
- [archlinux](https://archlinux.org/)
- [git](https://git-scm.com/)
- [stow](https://www.gnu.org/software/stow/)
- [kitty](https://sw.kovidgoyal.net/kitty/)
- [hyprland](https://hyprland.org/)
- [dunst](https://dunst-project.org/)
- [rofi](https://github.com/lbonn/rofi)
- [waybar](https://github.com/Alexays/Waybar)
- [wlogout](https://github.com/ArtsyMacaw/wlogout)
- [hyprpaper](https://github.com/hyprwm/hyprpaper)
- [hyprlock](https://github.com/hyprwm/hyprlock)
- [swappy](https://github.com/jtheoof/swappy)
- [grimblast](https://github.com/hyprwm/contrib/blob/main/grimblast/grimblast.1.scd)
- [ttf-firacode-nerd](https://www.nerdfonts.com/font-downloads)
- [ttf-nerd-fonts-symbols](https://www.nerdfonts.com/font-downloads)
- [ttf-nerd-fonts-symbols-common](https://www.nerdfonts.com/font-downloads)
- [yazi](https://github.com/sxyazi/yazi?tab=readme-ov-file)
- [headsetcontrol](https://github.com/Sapd/HeadsetControl)
- [unzip](https://man.archlinux.org/man/unzip.1.en)
- [libnotify](https://github.com/GNOME/libnotify)
- [man-pages](https://linux.die.net/man/)
- [man-db](https://linux.die.net/man/)
- [waypaper](https://github.com/anufrievroman/waypaper)
- [catppuccin-gtk-theme-mocha](https://github.com/catppuccin/catppuccin#-ports-and-more)
- [github-cli](https://cli.github.com/)
- [pavucontrol](https://freedesktop.org/software/pulseaudio/pavucontrol/)
- [yay](https://github.com/Jguer/yay)
- [hyprcursor](https://github.com/hyprwm/hyprcursor)
- [catppuccin-cursors-mocha](https://github.com/catppuccin/cursors)
- [htop-vim](https://github.com/KoffeinFlummi/htop-vim)

## Installation
### Install yay
```bash
sudo pacman -S --needed git base-devel
mkdir -p ~/git
git clone https://aur.archlinux.org/yay.git ~/git/
cd ~/git/yay
makepkg -si
```

### Clone and install dotfiles
Install dependencies from the arch repositories
```bash
mkdir -p ~/configs
git clone https://github.com/lassejep/dotfiles.git ~/configs/
cd ~/configs/dotfiles
yay -S --needed - < packages.txt
stow --dotfiles -t $XDG_CONFIG_HOME .
```
If you run into any issues with the stow command, you can manually delete the conflicting files from your system and then run the stow command again.
