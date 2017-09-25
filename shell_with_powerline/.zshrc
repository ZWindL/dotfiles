#. ~/.zsh/envs.zsh
. ~/.zsh/oh-my-zsh.zsh

#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
. /usr/share/fzf/key-bindings.zsh
. /usr/share/fzf/completion.zsh

## For termite
. /etc/profile.d/vte.sh

# For PowerLine
. /usr/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh
#zsh 高亮
. /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
#bindkey -v
bindkey -e
# End of lines configured by zsh-newuser-install

. ~/.zsh/alias.zsh
. ~/.zsh/functions.zsh
. ~/.zsh/completions.zsh
. ~/.zsh/grml.zsh
. ~/.zsh/more_color.zsh

#按照拼音补全路径
source /usr/share/pinyin-completion/shell/pinyin-comp.zsh

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
