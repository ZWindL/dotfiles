zplugin ice wait lucid
zplugin snippet OMZ::lib/git.zsh

zplugin ice wait atload"unalias grv" lucid
zplugin snippet OMZ::plugins/git/git.plugin.zsh

zplugin ice wait lucid
zplugin snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh

zplugin ice wait atinit"zpcompinit" lucid
zplugin light zdharma/fast-syntax-highlighting

zplugin ice wait atinit"zpcompinit" lucid
zplugin load agkozak/zsh-z
