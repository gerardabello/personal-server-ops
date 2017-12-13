docker stop portainer
docker rm portainer

docker run -d --name portainer -p 3000:9000 \
  --network=intranet \
  --restart=always \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v "${HOME}/volumes/portainer/data":/data \
  portainer/portainer
