# dotfiles
Config files for my archlinux hyprland setup

## Dependencies
- [archlinux](https://archlinux.org/)
- [stow](https://www.gnu.org/software/stow/)
- [zsh](https://www.zsh.org/)
- [tmux](https://github.com/tmux/tmux/wiki)
- [neovim](https://neovim.io/)
- [kitty](https://sw.kovidgoyal.net/kitty/)
- [hyprland](https://hyprland.org/)
- [dunst](https://dunst-project.org/)
- [rofi-wayland](https://github.com/lbonn/rofi)
- [waybar](https://github.com/Alexays/Waybar)
- [wlogout](https://github.com/ArtsyMacaw/wlogout)
- [hyprpaper](https://github.com/hyprwm/hyprpaper)
- [hyprlock](https://github.com/hyprwm/hyprlock)
- [swappy](https://github.com/jtheoof/swappy)
- [grimblast](https://github.com/hyprwm/contrib/blob/main/grimblast/grimblast.1.scd)
- [zoxide](https://github.com/ajeetdsouza/zoxide)
- [pyenv](https://github.com/pyenv/pyenv)
- [yarn](https://yarnpkg.com/)
- [fzf](https://github.com/junegunn/fzf)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [ttf-firacode-nerd](https://www.nerdfonts.com/font-downloads)
- [ttf-nerd-fonts-symbols](https://www.nerdfonts.com/font-downloads)
- [ttf-nerd-fonts-symbols-common](https://www.nerdfonts.com/font-downloads)
- [lf](https://github.com/gokcehan/lf)
- [tpm](https://github.com/tmux-plugins/tpm)
- [headsetcontrol](https://github.com/Sapd/HeadsetControl)
- [yt-dlp](https://github.com/yt-dlp/yt-dlp)
- [mpv](https://mpv.io/)
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
- [zsh-autocomplete](https://github.com/marlonrichert/zsh-autocomplete)
- [htop-vim](https://github.com/KoffeinFlummi/htop-vim)

## Installation
### Install dependencies
Install yay
```bash
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```
Install dependencies from the arch repositories
```bash
yay -S stow zsh tmux neovim kitty dunst rofi-wayland waybar wlogout hyprpaper hyprlock swappy grimblast zoxide pyenv yarn fzf ripgrep ttf-firacode-nerd ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-common lf headsetcontrol yt-dlp mpv unzip libnotify man-pages man-db waypaper catppuccin-gtk-theme-mocha github-cli pavucontrol hyprcursor catppuccin-cursors-mocha zsh-autocomplete htop-vim
```
Install tmux plugin manager (tpm)
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### Clone and install dotfiles
```bash
git clone https://github.com/lassejep/dotfiles.git
cd dotfiles
stow --dotfiles -t ~/ .
```
If you run into any issues with the stow command, you can manually delete the conflicting files from your system and then run the stow command again.

### Install plugins
Change your shell to zsh
```bash
chsh -s $(which zsh)
```

Then reboot your system and open a terminal, you should automatically be put into a tmux session, press `ctrl + space` and then `I` to install the tmux plugins.
after that you can install the neovim plugins simply by opening neovim: `nvim`. The plugins should install automatically.
Then you should be good to go.
