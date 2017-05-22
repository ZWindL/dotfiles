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
