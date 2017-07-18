docker stop opticiandb
docker rm opticiandb

docker run -d --name=opticiandb \
  --restart=always \
  --hostname=opticiandb \
  -p 2101:26257 -p 2102:8080 \
  -v "${HOME}/volumes/opticiandb/cockroach-data:/cockroach/cockroach-data" \
  cockroachdb/cockroach:v1.0 \
  start --insecure --cache=10MiB --max-sql-memory=10MiB
