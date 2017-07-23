# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias rm='rm -i'
alias start='sudo systemctl start'
alias stop='sudo systemctl stop'
alias restart='sudo systemctl restart'
alias status='sudo systemctl status'
alias tree='tree -C'
#alias ls='exa'
alias pq='proxychains -q'
alias mosh='mosh --predict=experimental'
alias mossh='mosh --predict=experimental --ssh="ssh"'

#for glances
#alias glances='LANG=en_US.UTF-8 && glances --tree -w'
alias glances='LANG=en_US.UTF-8 && glances'
