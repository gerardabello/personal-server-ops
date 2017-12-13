docker stop unwelch-frontend
docker rm unwelch-frontend

docker run -d \
  --name=unwelch-frontend \
  --restart=always \
  --network=intranet \
  registry.gitlab.com/unwelch/frontend
