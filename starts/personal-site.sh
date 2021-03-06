docker stop personal-site
docker rm personal-site

docker pull gerardabello/personal-site

docker run -d \
  --name=personal-site \
  --restart=always \
  --network=intranet \
  gerardabello/personal-site
