docker stop proxy
docker rm proxy

docker run -d \
  --name proxy \
  --restart=always \
  --network=intranet \
  -p 80:80 -p 443:443 \
  -v /home/gerard/ops/CaddyfileProxy:/etc/Caddyfile \
  -v /home/gerard/volumes/proxy/caddy:/root/.caddy \
  abiosoft/caddy
