# personal dotfiles

used on all my linux desktops/laptops (currently used on a WSL2 Arch install)

this dotfiles setup has configs for:
- i3 window manager
- fontconfig
- [kitty](https://sw.kovidgoyal.net/kitty/) & [foot](https://codeberg.org/dnkl/foot) terminal
- [mpd](http://www.musicpd.org/) & [ncmpcpp](https://github.com/ncmpcpp/ncmpcpp)
- [mpDris2](https://github.com/eonpatapon/mpDris2) - media key & notification support for mpd
- [picom](https://github.com/tryone144/picom)
- dunst
- [rofi](https://github.com/davatorium/rofi)

to recreate my setup, you need:
- git, zsh already installed on your system
- fortune (for quotes on shell launch)
- [oh my zsh](https://github.com/ohmyzsh/ohmyzsh)
- [vim-plug](https://github.com/junegunn/vim-plug) for (neo)vim
- [thefuck](https://github.com/nvbn/thefuck)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [fastfetch](https://github.com/fastfetch-cli/fastfetch)
- some fonts:
    - Adwaita Mono/Sans (included with GNOME if you have it installed)

to use my setup, you need to:
- clone this repo in the root of your home folder ($HOME/dotfiles).

you can do this by running

```
git clone https://github.com/unawarespecs/dotfiles.git
```

in your home folder, then execute setup.sh inside the dotfiles folder.

be warned: this script will overwrite your dotfiles. the setup.sh script tries to automatically back up your old dotfiles to $HOME/dotfiles_old, so back up your current dotfiles just in case.
