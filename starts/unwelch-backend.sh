docker stop unwelch-backend
docker rm unwelch-backend
docker pull registry.gitlab.com/unwelch/backend

docker run -d --name unwelch-backend \
  --restart=always \
  --network=intranet \
  -e DB_HOST="db.unwel.ch" \
  -e DB_PORT="2200" \
  -e DB_USER="root" \
  -e DB_NAME="unwelch" \
  registry.gitlab.com/unwelch/backend
