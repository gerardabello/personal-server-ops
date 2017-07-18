docker stop watchtower
docker rm watchtower

docker run -d \
  --restart=always \
  --name watchtower \
  -v /var/run/docker.sock:/var/run/docker.sock \
  v2tec/watchtower
