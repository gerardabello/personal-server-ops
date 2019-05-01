docker stop lamevamirada
docker rm lemevamirada

docker pull gerardabello/lamevamirada

docker run -d \
  --name=lamevamirada \
  --restart=always \
  --network=intranet \
  gerardabello/lamevamirada
