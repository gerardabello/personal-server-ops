docker stop counters-frontend
docker rm counters-frontend
docker pull gerardabello/counters-frontend

docker run -d \
  --name=counters-frontend \
  --restart=always \
  --network=intranet \
  gerardabello/counters-frontend
