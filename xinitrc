#! /bin/sh

# Source ~/.profile
if [ -f "$HOME/.profile" ]; then
  source "$HOME/.profile"
fi

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources


# Unlock keyring
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh) &
export SSH_AUTH_SOCK

# Launch window manager
xsetroot -name i3
exec i3
