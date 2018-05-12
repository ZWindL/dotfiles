#
# ~/.bashrc
#

#256 colors
export TERM=xterm-256color

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

#拼音补全路径
source /usr/share/pinyin-completion/shell/pinyin-comp.bash

## k-blur
if [[ $(ps --no-header -p $PPID -o comm) =~ yakuake|konsole ]]; then
    for wid in $(xdotool search --pid $PPID); do
        xprop -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0 -id $wid; done
fi

export QSYS_ROOTDIR="/home/zwindl/.cache/pacaur/quartus-standard/pkg/quartus-standard/opt/altera/quartus/sopc_builder/bin"
