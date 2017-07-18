docker stop serras.xyz
docker rm serras.xyz

docker run -d \
  --name=serras.xyz \
  --restart=always \
  --network=intranet \
  -v "${HOME}/volumes/serras.xyz/caddy-data:/root/.caddy" \
  gerardabello/serras.xyz
