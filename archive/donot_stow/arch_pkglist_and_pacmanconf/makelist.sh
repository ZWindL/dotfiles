#!/usr/bin/env bash

DEFAULT_NAME="pkgs_installed.bak.list"
DEFAULT_AUR_PKGS_NAME="aur_pkgs.bak.list"

DEFAULT_NAME_FULL="pkgs_installed.full.bak.list"
DEFAULT_AUR_PKGS_NAME_FULL="aur_pkgs.full.bak.list"

list_aur_pkgs() {
	pacman -Qqm
}

list_all_pkgs(){
	pacman -Qq
}

list_all_pkgs_installed_explicitely(){
	pacman -Qqe
}

list_all_pkgs_except_aur_pkgs(){
	list_all_pkgs | grep -v "$(list_aur_pkgs)"
}

list_all_pkgs_installed_explicitely_except_aur_pkgs(){
	list_all_pkgs_installed_explicitely | grep -v "$(list_aur_pkgs)"
}

BAK_PATH='.'
if [[ -n $2 ]] && [[ -d $2 ]]; then
	BAK_PATH=$2
fi

backup_old_lists(){
	mkdir -p $BAK_PATH/old_version
	echo -e "\033[32m Backing up old lists \033[0m"
	mv $DEFAULT_NAME $DEFAULT_NAME_FULL $DEFAULT_AUR_PKGS_NAME $DEFAULT_AUR_PKGS_NAME_FULL $BAK_PATH/old_version 2> /dev/null
	echo -e "\033[32m Done! \033[0m"
}

backup(){
	echo -e "\033[32m Baking up...\033[0m"
	list_all_pkgs_except_aur_pkgs > $BAK_PATH/$DEFAULT_NAME_FULL
	list_all_pkgs_installed_explicitely_except_aur_pkgs > $BAK_PATH/$DEFAULT_NAME
	list_aur_pkgs > $BAK_PATH/$DEFAULT_AUR_PKGS_NAME_FULL
	#list_aur_pkgs_explicitely
	LIST_TMP=./list.tmp.list
	list_all_pkgs_installed_explicitely > $LIST_TMP
	comm -12 --nocheck-order $BAK_PATH/$DEFAULT_AUR_PKGS_NAME_FULL $LIST_TMP > $BAK_PATH/$DEFAULT_AUR_PKGS_NAME
	rm -rf $LIST_TMP
	echo -e "\033[32m Done...\033[0m"
}

# reinstall pkgs
install(){
	if [[ ! -f $1 ]]; then
		echo -e "\033[31mERR! File $1 doesn't exsist!\033[0m"
		exit 2
	else
		sudo pacman -S --needed - < $1
	fi
}
reinstall(){
	BAK_PATH='.'
	if [[ -n $2 ]] && [[ -d $2 ]]; then
		BAK_PATH=$2
	fi

	LIST_FILE=$BAK_PATH/$DEFAULT_NAME
	case $1 in
		"explicit" )
			install $LIST_FILE
			;;
		"full" )
			LIST_FILE=$BAK_PATH/$DEFAULT_NAME_FULL
			install $LIST_FILE
			;;
		"AUR" )
		    pikaur -S -a --noedit --nodiff --needed < $LIST_FILE
			#echo -e "\033[32mComming soon...\033[0m"
			;;
		"*" )
			install $LIST_FILE
			;;
	esac
}

case $1 in
	"-b" )
		backup_old_lists
		backup
		;;
	"-r" )
		reinstall $2 $3
		;;
	* )
		cat <<USAGE
Usage: $0 -b | -r [reinstall type] [backup_files_path]
	-b : backup your package list in text files
	-r : reinstall all package from backup files
			choose one from [explicit, full, AUR]

	You can specify the backup path to store your backup files
USAGE
		exit 1
		;;
esac
