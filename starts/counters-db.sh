docker stop counters-db
docker rm counters-db

docker run -d \
  --name=counters-db \
  --restart=always \
  --hostname=counters-db \
  -p 3200:5432 \
  -v "${HOME}/volumes/countersdb/data:/var/lib/postgresql/data" \
  -e POSTGRES_PASSWORD=$COUNTERS_DB_PASSWORD \
  postgres:10.3 
