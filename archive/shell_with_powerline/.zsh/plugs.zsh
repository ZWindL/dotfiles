# Supports oh-my-zsh plugins and the like
zplug 'zplug/zplug'
zplug "plugins/git",   from:oh-my-zsh
zplug "plugins/colored-man-pages/colored-man-pages",   from:oh-my-zsh
zplug "zdharma-continuum/fast-syntax-highlighting"
# zplug "agkozak/zsh-z" # substitude by zoxide

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug

# zplug load --verbose
zplug load
