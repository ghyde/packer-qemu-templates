#!/bin/sh

# Disable udev persistent net rules
if [ -f /etc/udev/rules.d/70-persistent-net.rules ]; then
  rm /etc/udev/rules.d/70-persistent-net.rules
fi

mkdir /etc/udev/rules.d/70-persistent-net.rules
rm /lib/udev/rules.d/75-persistent-net-generator.rules
rm -rf /dev/.udev/ /var/lib/dhcp3/*

echo "pre-up sleep 2" >> /etc/network/interfaces
echo
echo "#secondary network interface" >> /etc/network/interfaces
echo "auto eth1"  >> /etc/network/interfaces
echo "iface eth1 inet dhcp"  >> /etc/network/interfaces
echo "pre-up sleep 2" >> /etc/network/interfaces

# Disable DNS reverse lookup
echo "UseDNS no" >> /etc/ssh/sshd_config
