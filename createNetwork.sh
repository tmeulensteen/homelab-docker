docker network create -d macvlan \
  --subnet=192.168.178.0/24 \
  --gateway=192.168.178.1 \
  -o parent=enp2s0 pub_net
