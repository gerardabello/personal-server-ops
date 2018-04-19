docker stop unwelch-db
docker rm unwelch-db

docker run -d \
  --name=unwelch-db \
  --restart=always \
  --hostname=unwelch-db \
  -p 2200:5432 \
  -v "${HOME}/volumes/unwelchdb/data:/var/lib/postgresql/data" \
  -e POSTGRES_PASSWORD=$UNWELCH_DB_PASSWORD \
  postgres:10.3 
