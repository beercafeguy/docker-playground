#!/bin/ksh

docker network create mongo-net
docker network ls

docker run -d \
-p 27017:27017 \
--network mongo-net \
--name mongodb \
-e MONGO_INITDB_ROOT_USERNAME=admin \
-e MONGO_INITDB_ROOT_PASSWORD=password \
mongo 

docker ps
docker logs mongodb

docker run -d \
--network mongo-net \
--name mongo-express \
-p 18081:8081 \
-e ME_CONFIG_BASICAUTH_USERNAME="admin" \
-e ME_CONFIG_BASICAUTH_PASSWORD="password" \
-e ME_CONFIG_MONGODB_ADMINUSERNAME="admin" \
-e ME_CONFIG_MONGODB_ADMINPASSWORD="password" \
-e ME_CONFIG_OPTIONS_EDITORTHEME="ambiance" \
-e ME_CONFIG_MONGODB_SERVER="mongodb" \
mongo-express



# Docker compose
docker compose -f mongo.yaml up
docker compose -f mongo.yaml down

#docker build 
 docker build -t nodeapp:0.1 .

# docker tag 
# docker login
# docker push 

 docker run -p 8888:8888 jupyter/pyspark-notebook