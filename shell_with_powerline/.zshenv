# envs
# for OH-MY-ZSH
# Path to your oh-my-zsh installation.
export ZSH=/usr/share/oh-my-zsh/
#export ZSH=$HOME/.oh-my-zsh

#256 colors
export TERM=xterm-256color

fpath+=~/.zfunc

#fuck this line!!!!!!!!
#export RUST_SRC_PATH=/home/zwindl/.vim/srcs/rust/beta/src

#for rustup
export CARGO_HOME=~/.cargo
export RUSTUP_HOME=~/.rustup
export PATH="${PATH}":$CARGO_HOME/bin

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
