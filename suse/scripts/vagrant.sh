#!/bin/sh

# Store build time
date > /etc/vagrant_box_build_time

# Install vagrant key
mkdir -pm 700 /home/vagrant/.ssh
curl -L https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub -o /home/vagrant/.ssh/authorized_keys
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant.users /home/vagrant/.ssh

# enable vagrant sudo
echo 'vagrant             ALL=(ALL)   NOPASSWD: ALL' >> /etc/sudoers.d/vagrant
echo 'Defaults:vagrant    env_keep += SSH_AUTH_SOCK' >> /etc/sudoers.d/vagrant


