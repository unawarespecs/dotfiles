#!/usr/bin/env zsh
export HISTFILE="$HOME/.cache/zsh_history"

# Shell functions autoload
autoload -Uz compinit compaudit colors
compinit
colors

# oh-my-zsh stuff
if [ -d "$HOME/.oh-my-zsh" ]; then
	export ZSH=$HOME/.oh-my-zsh
	ZSH_THEME="robbyrussell"
	DISABLE_UPDATE_PROMPT="true"
	DISABLE_AUTO_TITLE="true"
	COMPLETION_WAITING_DOTS="true"
	plugins=(git brew colored-man-pages thefuck zsh-syntax-highlighting)
	source $ZSH/oh-my-zsh.sh
fi

# ---------------------
# general configuration
# ---------------------

# functions
export fpath=($fpath ~/.zsh/funcs)

# shell prompt
if [ ! -d "$HOME/.oh-my-zsh" ]; then
	PROMPT=" % » "
	RPROMPT="%~ "
elif [ -d "$HOME/.oh-my-zsh" ]; then
	# comment below to use oh-my-zsh prompt ($ZSH_THEME)
	#prompt-sh
fi

# Aliases
if [ -f "$HOME/.aliases" ]; then
	source "$HOME/.aliases"
fi

# fortune + greeting
if [[ "$(uname -s)" == "Darwin" ]]; then
	echo "$(/usr/local/bin/fortune)\n "
else
	echo "$(/usr/bin/fortune)\n "
fi

# Terminal title
case $TERM in
	(*xterm* | *rxvt*)

	# Write some info to terminal title.
	# This is seen when the shell prompts for input.
	function precmd {
		print -Pn "\e]0;$USER: ${PWD/#"$HOME"/~}\a"
	}
	# Write command and args to terminal title.
	# This is seen while the shell waits for a command to complete.
	function preexec {
		printf "\033]0;%s\a" "$1"
	}
	;;
esac

export GPG_TTY=$(tty)
