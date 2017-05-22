. ~/.zsh/completions.zsh
. ~/.zsh/oh-my-zsh.zsh
. ~/.zsh/functions.zsh
. ~/.zsh/envs.zsh
. ~/.zsh/grml.zsh
. ~/.zsh/alias.zsh

#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
. /usr/share/fzf/key-bindings.zsh
. /usr/share/fzf/completion.zsh

## For termite
. /etc/profile.d/vte.sh

# For PowerLine
. /usr/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh
#zsh 高亮
. /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#按照拼音补全路径
source /usr/share/pinyin-completion/shell/pinyin-comp.zsh

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
#bindkey -v
bindkey -e
# End of lines configured by zsh-newuser-install
