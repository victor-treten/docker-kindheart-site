#!/bin/bash


echo "**********************************************************"
echo "Downloading html files from Tooplate"
sudo wget https://templatemo.com/download/templatemo_581_kind_heart_charity
sleep 5
echo -e "\n"


echo "**********************************************************"
echo "Installing Unzip"
sudo apt install unzip
sleep 5
echo -e "\n"

echo "**********************************************************"
echo "Unzipping downloaded zipped file"
sudo unzip templatemo_581_kind_heart_charity.zip -d ./
sleep 5
echo -e "\n"

echo "END"
