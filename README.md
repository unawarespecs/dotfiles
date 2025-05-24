# personal dotfiles

used on all my linux boxes (current: WSL2 on my Windows laptop)

this dotfiles setup has configs for:
- i3 window manager
- fontconfig
- [kitty](https://sw.kovidgoyal.net/kitty/) terminal
- [mpd](http://www.musicpd.org/) & [ncmpcpp](https://github.com/ncmpcpp/ncmpcpp)
- [mpDris2](https://github.com/eonpatapon/mpDris2) - media key and notification support for mpd
- [picom](https://github.com/tryone144/picom)
- dunst
- [foot](https://codeberg.org/dnkl/foot) terminal
- [rofi](https://github.com/davatorium/rofi)

to recreate my setup, you need:
- [oh my zsh](https://github.com/ohmyzsh/ohmyzsh)
- [vim-plug](https://github.com/junegunn/vim-plug) for (neo)vim
- [thefuck](https://github.com/nvbn/thefuck)
- fortune (for quotes on shell launch)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [fastfetch](https://github.com/fastfetch-cli/fastfetch)
- some fonts:
    - Adwaita Mono/Sans (included with GNOME if you have it installed)

to use my setup, you need to:
- clone this repo preferably in your home folder ($HOME/dotfiles).

you can do this by running

```
git clone https://github.com/unawarespecs/dotfiles.git
```

in your home folder.

- then execute setup.sh inside the dotfiles folder.

be warned: this script will overwrite your dotfiles. the setup.sh script tries to automatically back up your old dotfiles to $HOME/dotfiles_old, so back up your current dotfiles just in case.
