docker stop serras.xyz
docker rm serras.xyz

docker run -e -d \
  --name=serras.xyz \
  --restart=always \
  -p 80:80 -p 443:443 \
  -v "${HOME}/volumes/serras.xyz/caddy-data:/root/.caddy" \
  gerardabello/serras.xyz
