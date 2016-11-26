#!/bin/bash

set -e

echo -e "\x1B[01;92m Changing directory to $HOME \x1B[0m"
cd $HOME
echo -e "\x1B[01;92m Creating the ./leunammejii/webgoat-N-docker directories \x1B[0m"
mkdir -p ./leunammejii/webgoat-N-docker
echo -e "\x1B[01;92m Changing directory to ./leunammejii/webgoat-N-docker \x1B[0m"
cd ./leunammejii/webgoat-N-docker

echo -e "\x1B[01;92m Initializing git reporsitory \x1B[0m"
git init
echo -e "\x1B[01;92m Pulling down the webgoat-N-docker repository \x1B[0m"
git pull https://github.com/leunammejii/webgoat-N-docker.git

echo -e "\x1B[01;92m Creating network, image, and container \x1B[0m"
if [ $(uname -m | grep arm) ]
then
    docker-compose up -d webgoat_armhf
else
    docker-compose up -d webgoat

echo -e "\x1b[01;36m\n The build is complete! Please navigate to: \n\x1B[0m"
echo -e "\x1B[01;36m\t http://HOSTIP:8080/WebGoat \n\x1B[0m"
