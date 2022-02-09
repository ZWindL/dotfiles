#console blur
if [[ $(ps --no-header -p $PPID -o comm | grep -Ev '^(yakuake|konsole)$' ) ]]; then
    for wid in $(xdotool search --pid $PPID); do
        xprop -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0 -id $wid; done
fi

. ~/.zsh/oh-my-zsh.zsh
## For termite
. /etc/profile.d/vte.sh

# For PowerLine
. /usr/lib/python3.10/site-packages/powerline/bindings/zsh/powerline.zsh

# auto suggestion
. /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
#bindkey -v
bindkey -e

. ~/.zsh/alias.zsh
. ~/.zsh/functions.zsh
. ~/.zsh/grml_comp.zsh
. ~/.zsh/grml.zsh
. ~/.zsh/completions.zsh
. ~/.zsh/more_color.zsh

#按照拼音补全路径
. /usr/share/pinyin-completion/shell/pinyin-comp.zsh

#启动显示 fortune
#fortune | cowsay -f $(find /usr/share/cows -type f | shuf -n 1)
fortune | cowthink -f $(find /usr/share/cows -type f | shuf -n 1)
#fortune | ponysay

# Enable Ctrl-x-e to edit command line
autoload -U edit-command-line
# Emacs style
zle -N edit-command-line
bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line
# Vi style:
# zle -N edit-command-line
# bindkey -M vicmd v edit-command-line

#. /usr/share/fzf/key-bindings.zsh
#. /usr/share/fzf/completion.zsh
. /usr/share/skim/key-bindings.zsh
. /usr/share/skim/completion.zsh

# OPAM configuration
. /home/zwindl/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

#. /home/zwindl/.config/broot/launcher/bash/br
#. /usr/share/zsh/site-functions/git-flow-completion.zsh

. ~/.zplug/init.zsh
. ~/.zsh/plugs.zsh
