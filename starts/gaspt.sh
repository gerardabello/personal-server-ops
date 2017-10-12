docker stop gaspt
docker rm gaspt

docker run -d \
  --name=gaspt \
  --restart=always \
  --network=intranet \
  gerardabello/gaspt
