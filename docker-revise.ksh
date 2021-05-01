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
-e ME_CONFIG_BASICAUTH_USERNAME="admin" \
-e ME_CONFIG_BASICAUTH_PASSWORD="password" \
mongo-express



# Docker compose
