#My dotfiles

exec `stow $PACKAGE_NAME` to create the link of certain package's configure file.

exec `pacman -Qqen > pkglist.txt` to make a list of installed packages.

To install packages from the list backup, run:
```
sudo pacman -S - < pkglist.txt
```

*To skip already installed packages, use `--needed`*

In case the list includes foreign packages, such as AUR packages, remove them first:
```
pacman -S $(comm -12 <(pacman -Slq | sort) <(sort pkglist.txt))
```

To remove all the packages on your system that are not mentioned in the list. 
```
pacman -Rsu $(comm -23 <(pacman -Qq | sort) <(sort pkglist.txt))
```

More details on [Arch Wiki](https://wiki.archlinux.org/index.php/Pacman/Tips_and_tricks#List_of_installed_packages)
