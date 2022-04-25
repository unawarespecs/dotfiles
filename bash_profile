#!/usr/bin/env bash
#░░░░█▀▄░█▀█░█▀▀░█░█░░░░░█▀█░█▀▄░█▀█░█▀▀░▀█▀░█░░░█▀▀
#░░░░█▀▄░█▀█░▀▀█░█▀█░░░░░█▀▀░█▀▄░█░█░█▀▀░░█░░█░░░█▀▀
#░▀░░▀▀░░▀░▀░▀▀▀░▀░▀░▀▀▀░▀░░░▀░▀░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀

if [[ $TERM_PROGRAM == "iTerm.app" ]]; then # iTerm stuff
	source ~/.iterm2_shell_integration.bash
fi

if [[ $TERM_PROGRAM == "iTerm.app" ]] || [[ $TERM_PROGRAM == "Terminal.app" ]]; then
	export SHELL_SESSION_HISTORY=0
fi

export HISTFILE="$HOME/.cache/bash_history"


export PATH=${PATH}:/var/lib/flatpak/exports/bin:$HOME/.local/bin:/sbin
export EDITOR=/usr/bin/vim
umask 022

# panel stuff
PANEL_FIFO=/tmp/panel-fifo

[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -f ~/.aliases ]] && . ~/.aliases

# for wsl
#export DISPLAY=$(grep -m 1 nameserver /etc/resolv.conf | awk '{print $2}'):0.0
#export LIBGL_ALWAYS_INDIRECT=1
#xrdb -load $HOME/.Xresources

