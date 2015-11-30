yum -y update
yum -y upgrade
yum -y install salt-minion
cat << EOF > /etc/salt/minion
file_client: local

file_roots:
  base:
    - states

pillar_roots:
  base:
    - pillar

root_dir: .

disable_modules:
    - ipmi
    - nacl
    - npm
    - tls
    - zfs
EOF
