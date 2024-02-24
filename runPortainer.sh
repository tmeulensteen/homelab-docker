
docker volume create portainer_data
docker stop portainer
docker rm portainer
docker run -d -p 8000:8000 -p 9000:9000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer:1.24.2-alpine --no-auth
# Do not use portainer-ce https://github.com/portainer/portainer/issues/2101#issuecomment-666070463


