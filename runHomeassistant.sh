docker stop homeassistant
docker rm homeassistant
docker run -d \
  --name homeassistant \
  --privileged \
  --restart=unless-stopped \
  -e TZ=Europe/Amsterdam \
  -v /home/tom/containers/homeassistant/config:/config \
  -p 8123:8123 \
  ghcr.io/home-assistant/home-assistant:stable
