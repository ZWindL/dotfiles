# https://transfer.sh
transfer() {
	tmpfile=$(mktemp -t transferXXX)
	curl --progress-bar --upload-file $1 https://transfer.sh/$(basename $1) >> $tmpfile;
	cat $tmpfile;
	rm -rf $tmpfile
}

transfer_one_time() {
	tmpfile=$(mktemp -t transferXXX)
	curl --progress-bar -H "Max-Downloads: 1" -H "Max-Days: 5" --upload-file $1 https://transfer.sh/$(basename $1) >> $tmpfile;
	cat $tmpfile;
	rm -rf $tmpfile
}

#fzf
fzf-history-widget-accept() {
  fzf-history-widget
  zle accept-line
}
zle     -N     fzf-history-widget-accept
bindkey '^X^R' fzf-history-widget-accept

# init zplug
init_zplug() {
    if [ ! -f ~/.zplug/init.zsh ]; then
        curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
    fi
}
