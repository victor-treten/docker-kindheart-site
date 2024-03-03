#!/bin/bash

echo "**********************************************************"
echo " Creating Dockerfile"
touch Dockerfile
ls -la
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "Editing Dockerfile"
echo "FROM nginx:alpine" > Dockerfile
echo "COPY ./templatemo_581_kind_heart_charity/ /usr/share/nginx/html" >> Dockerfile
echo -e "\n"

echo "**********************************************************"
echo "Building nginx image named kindheart-image"
docker build -t kindheart-image:kindheart . 
sleep 10
echo -e "\n"

echo "**********************************************************"
echo "List of docker images available"
docker images
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "Running nginx container from kindheart-image"
docker run --name kindheart-nginx -d -p 600:80 kindheart-image:kindheart
sleep 10
echo -e "\n"

echo "**********************************************************"
echo "List of docker containers running"
docker ps
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "HTML data from index page"
curl localhost:600
echo -e "\n"

echo "**********************************************************"
echo "Confirm docker login"
docker login
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "Tag image to repository with kindheart tag"
docker tag kindheart-image:kindheart odennav/nginx:kindheart
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "Push tagged image to dockerhub"
docker push odennav/nginx:kindheart
sleep 5
echo -e "\n"

echo "END"






