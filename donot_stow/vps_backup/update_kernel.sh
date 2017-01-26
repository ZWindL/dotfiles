#!/usr/bin/env bash

wget https://copr.fedorainfracloud.org/coprs/librehat/shadowsocks/repo/epel-7/librehat-shadowsocks-epel-7.repo /etc/yum.repos.d/
yum update -y

#install other
yum -y install vim fail2ban znc znc-devel shadowsocks-libev
yum install gcc gettext autoconf libtool automake make openssl-devel pcre-devel asciidoc xmlto zlib-devel openssl-devel libsodium-devel udns-devel libev-devel -y

#install 4.9.X
rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
rpm -Uvh http://www.elrepo.org/elrepo-release-7.0-2.el7.elrepo.noarch.rpm
yum --enablerepo=elrepo-kernel install kernel-ml

$(awk -F\' '$1=="menuentry " {print i++ " : " $2}' /etc/grub2.cfg)

index=0
read -p "input index of kernel:" index
grub2-set-default $index
reboot
