docker stop bandroulette-server
docker rm bandroulette-server

docker run -d --name bandroulette-server \
-p 2300:6173 \
--restart=always \
gerardabello/bandroulette-server
