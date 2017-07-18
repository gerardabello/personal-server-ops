docker stop unwelchdb
docker rm unwelchdb

docker run -d \
  --name=unwelchdb \
  --restart=always \
  --hostname=unwelchdb \
  -p 2200:26257 -p 2201:8080 \
  -v "${HOME}/volumes/unwelchdb/cockroach-data:/cockroach/cockroach-data" \
  cockroachdb/cockroach:v1.0 \
  start --insecure --cache=10MiB --max-sql-memory=10MiB
