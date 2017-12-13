docker stop unwelch-backend
docker rm unwelch-backend

docker run -d --name unwelch-backend \
  -p 2102:3000 \
  --restart=always \
  --link unwelch-db:db \
  -e SQL_HOST="db" \
  -e SQL_PORT="2200" \
  registry.gitlab.com/unwelch/backend
