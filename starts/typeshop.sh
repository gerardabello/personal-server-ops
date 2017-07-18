docker stop typeshop
docker rm typeshop

docker run -d \
  --name=typeshop \
  --restart=always \
  --network=intranet \
  gerardabello/typeshop
