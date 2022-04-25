#!/usr/bin/env zsh
#  ~/.zshenv

export PATH=$PATH:/mnt/c/Windows/System32:/mnt/c/Windows/System32/WindowsPowerShell/v1.0:$HOME/.local/bin
export EDITOR=/usr/bin/vim
export GDK_SCALE=1.25
export QT_AUTO_SCREEN_SCALE_FACTOR=1
#export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0 
#export LIBGL_ALWAYS_INDIRECT=1
umask 022

# panel stuff
PANEL_FIFO=/tmp/panel-fifo

xrdb -load $HOME/.Xresources
# language settings
#export LANG="en_US.UTF-8"
#export LANG="ja_JP.UTF-8"
#export LANG="tl_PH.UTF-8"
#export LANG="zh_CN.UTF-8"

