#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export PATH=$PATH:~/bin

alias rm='rm -I'

#[ -f ~/.fzf.bash ] && source ~/.fzf.bash
. /usr/share/fzf/key-bindings.bash
. /usr/share/fzf/completion.bash

## For termite
if [[ $TERM == xterm-termite ]]; then
	. /etc/profile.d/vte.sh
fi
