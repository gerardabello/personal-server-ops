docker stop unwelch-frontend
docker rm unwelch-frontend
docker pull unwelch/frontend

docker run -d \
  --name=unwelch-frontend \
  --restart=always \
  --network=intranet \
  unwelch/frontend
