echo "deb http://repo.saltstack.com/apt/ubuntu/14.04/amd64/latest trusty main" >> /etc/apt/sources.list
# Update the box
apt-get -y --force-yes update
apt-get -y --force-yes upgrade
