#for NVIDIA optimus
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

export LANG=zh_CN.UTF-8
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
exec fcitx&

#交换Capslock和Ctrl
exec setxkbmap -option ctrl:swapcaps&
exec i3

#session=${1:-awesome}

#case $session in
#	awesome			) exec awesome;;
#	enlightenment	) exec enlightenment_start;;
#	i3				) exec i3;;
#	sway			) exec sway;;
#	hawaii			) exec hawaii;;
#	kde				) exec startkde;;
#	mate			) exec mate-session;;
#	fluxbox			) exec startfluxbox;;
#	openbox			) exec openbox-session;;
#	*) exec $1;;
#esac
