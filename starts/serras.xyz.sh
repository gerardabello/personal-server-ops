docker stop serras.xyz
docker rm serras.xyz

docker run -d \
  --name=serras.xyz \
  --restart=always \
  --network=intranet \
  gerardabello/serras.xyz
