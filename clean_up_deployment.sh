#!/bin/bash

echo "******************************************"
echo " Stopping kindheart-nginx container:"
docker stop kindheart-nginx
sleep 5
echo -e  "\n"


echo "******************************************"
echo " Deleting kindheart-nginx container:"
docker rm kindheart-nginx
sleep 5
echo -e  "\n"


echo "******************************************"
echo "Deleting kindheart-image tagged kindheart:"
docker rmi kindheart-image:kindheart
sleep 5
echo -e  "\n"


echo "******************************************"
echo "Deleting kindheart-image tagged to your docker hub local repository:"
docker rmi odennav/nginx:kindheart
sleep 5
echo -e  "\n"


echo "******************************************"
echo " Confirm container has been stopped:"
docker ps
sleep 5
echo -e  "\n"

echo "******************************************"
echo " Confirm all kindheart images removed:"
docker images
sleep 5
echo -e  "\n"

echo "END"
