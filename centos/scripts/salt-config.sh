cat << EOF > /etc/salt/minion
file_client: local

file_roots:
  base:
    - /srv/salt/states

pillar_roots:
  base:
    - /srv/salt/pillars

disable_modules:
    - ipmi
    - nacl
    - npm
    - tls
    - zfs
EOF
