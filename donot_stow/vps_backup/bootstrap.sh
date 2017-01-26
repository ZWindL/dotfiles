#!/usr/bin/env bash

#znc
tar -xvf ./znc.tar
mkdir -p /var/lib/znc
mv ./.znc /var/lib/znc/
sudo -u znc znc

#sshd
mv ./sshd_config /etc/ssh/sshd_config
systemctl restart sshd

#fail2ban
tar -xvf ./fail2ban.tar
mv ./jail.local /etc/fail2ban/
mv ./filter.d/* /etc/fail2ban/filter.d
fail2ban-client start
