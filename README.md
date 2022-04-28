# personal dotfiles

used on all my linux boxes (current: WSL2 on my Windows laptop)

this dotfiles setup has configs for:
- [neofetch](https://github.com/dylanaraps/neofetch)
- [ranger](https://github.com/ranger/ranger)
- i3 window manager (use [i3-gaps](https://github.com/Airblader/i3))
- fontconfig
- [kitty](https://sw.kovidgoyal.net/kitty/) terminal
- [mpd](http://www.musicpd.org/) & [ncmpcpp](https://github.com/ncmpcpp/ncmpcpp)
- [mpDris2](https://github.com/eonpatapon/mpDris2) - media key and notification support for mpd
- [picom](https://github.com/tryone144/picom) (config may work with [ibhagwan](https://github.com/ibhagwan/picom)'s or [jonaburg](https://github.com/jonaburg/picom)'s forks)
- dunst
- [sway](https://github.com/swaywm/sway)
- [foot](https://codeberg.org/dnkl/foot) terminal
- [polybar](https://github.com/polybar/polybar)
- [rofi](https://github.com/davatorium/rofi)

to recreate my setup, you need:
- [oh my zsh](https://github.com/ohmyzsh/ohmyzsh)
- [Vundle](https://github.com/VundleVim/Vundle.vim) for (neo)vim
- [thefuck](https://github.com/nvbn/thefuck)
- fortune (for quotes on shell launch)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

to use my setup, you need to:
- clone this repo preferably in your home folder ($HOME/dotfiles).

you can do this by running

```
git clone https://github.com/unawarespecs/dotfiles.git
```

in your home folder.

- then execute make.sh inside the dotfiles folder.

be warned: this script will overwrite your dotfiles, so back up your current dotfiles in another folder.
