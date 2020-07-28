# envs
# for OH-MY-ZSH
# Path to your oh-my-zsh installation.
export ZSH=/usr/share/oh-my-zsh/

#hidpi
export QT_AUTO_SCREEN_SCALE_FACTOR=1

#256 colors
export TERM=xterm-256color

export TERMINAL=termite
fpath+=~/.zfunc

#for go
export GOPATH=~/project/golang
export PATH="${PATH}":$GOPATH/bin

#fuck this line!!!!!!!!
#export RUST_SRC_PATH=/home/zwindl/.vim/srcs/rust/beta/src

#for rustup
export CARGO_HOME=~/.cargo
export RUSTUP_HOME=~/.rustup
export PATH="${PATH}":$CARGO_HOME/bin
#export RUSTUP_DIST_SERVER="https://mirrors.ustc.edu.cn/rust-static"
#export RUSTUP_UPDATE_ROOT="https://mirrors.ustc.edu.cn/rust-static/rustup"
export RUSTUP_DIST_SERVER=https://mirrors.tuna.tsinghua.edu.cn/rustup

#for php
export PATH="${PATH}":/home/zwindl/.config/composer/vendor/bin

#for sdcv dictionary
export STARDICT_DATA_DIR=/home/zwindl/Downloads/dicts

export PATH=$HOME/bin:/usr/local/bin:$PATH
export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='gvim'
# fi
export EDITOR='vim'

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

#fzf
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
