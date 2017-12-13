docker stop unwelch-backend
docker rm unwelch-backend

docker run -d --name unwelch-backend \
  -p 2102:3000 \
  --restart=always \
  --link unwelch-db:db \
  -e DB_HOST="db" \
  -e DB_PORT="2200" \
  -e DB_USER="root" \
  -e DB_NAME="postgres" \
  registry.gitlab.com/unwelch/backend
