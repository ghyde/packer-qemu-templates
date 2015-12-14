#don't disable selinux
#rm /etc/sysconfig/selinux
#ln -s /etc/selinux/config /etc/sysconfig/selinux
#sed -i "s/^\(SELINUX=\).*/\1disabled/g" /etc/selinux/config

#remove any ssh keys or persistent routes, dhcp leases
rm -f /var/lib/dhcp/*leases
rm -rf /tmp/*
zypper clean

#disable reverse dns lookups on sshd
echo "UseDNS no" >> /etc/ssh/sshd_config
