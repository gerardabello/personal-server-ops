docker stop unwelch-db
docker rm unwelch-db

docker run -d \
  --name=unwelch-db \
  --restart=always \
  --hostname=unwelch-db \
  -p 2200:26257 -p 2201:8080 \
  -v "${HOME}/volumes/unwelchdb/cockroach-data:/cockroach/cockroach-data" \
  cockroachdb/cockroach:v1.1.3 \
  start --insecure --cache=10MiB --max-sql-memory=10MiB
