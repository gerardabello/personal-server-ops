docker stop counters-backend
docker rm counters-backend

docker run -d --name counters-backend \
  --restart=always \
  --network=intranet \
  -e DB_HOST="db.counters.gerard.sh" \
  -e DB_PORT="2200" \
  -e DB_PASSWORD=$COUNTERS_DB_PASSWORD \
  -e DB_USER="postgres" \
  gerardabello/counters-backend
  