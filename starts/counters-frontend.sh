docker stop counters-frontend
docker rm counters-frontend

docker run -d \
  --name=counters-frontend \
  --restart=always \
  --network=intranet \
  -e API_HOST="api.counters.gerard.sh" \
  gerardabello/counters-frontend
