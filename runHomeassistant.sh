docker stop homeassistant
docker rm homeassistant
docker run -d \
  --name homeassistant \
  --privileged \
  --restart=unless-stopped \
  --network=internal \
  -e TZ=Europe/Amsterdam \
  -v /home/tom/containers/homeassistant/config:/config \
  --ip 192.168.178.15 \
  -p 8123:8123 \
  ghcr.io/home-assistant/home-assistant:stable
