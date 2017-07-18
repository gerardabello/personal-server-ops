docker stop opticianapi
docker rm opticianapi

docker run -d --name opticianapi \
-p 2100:9000 \
--restart=always \
--link opticiandb:db \
-e STORE_TYPE="sql" \
-e SQL_HOST="db" \
-e SQL_PORT="2101" \
theopticians/optician-api
