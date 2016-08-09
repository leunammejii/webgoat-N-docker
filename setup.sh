#!/bin/bash

set -e

echo -e "\x1B[01;92m Checking if Docker is installed \x1B[0m"
if [ ! -f /usr/bin/docker ]
then
    echo -e "\x1B[01;91m Docker was not found in /usr/bin \x1B[0m"
    exit 1
fi

echo -e "\x1B[01;92m Checking if Docker-Compose is installed \x1B[0m"
if [ ! -f /usr/local/bin/docker-compose ]
then
    echo -e "\x1B[01;91m Docker-Compose was not found in /usr/local/bin \x1B[0m"
    exit 1
fi

echo -e "\x1B[01;92m Checking if Git is installed \x1B[0m"
if [ ! -f /usr/bin/git ]
then
    echo -e "\x1B[01;91m Git was not found in /usr/bin \x1B[0m"
    exit 1
fi

echo -e "\x1B[01;92m Changing directory to $HOME \x1B[0m"
cd $HOME
echo -e "\x1B[01;92m Creating the ./leunammejii/webgoat-N-docker directories \x1B[0m"
mkdir -p ./leunammejii/webgoat-N-docker
echo -e "\x1B[01;92m Changing directory to ./leunammejii/webgoat-N-docker \x1B[0m"
cd ./leunammejii/webgoat-N-docker

echo -e "\x1B[01;92m Initializing git reporsitory \x1B[0m"
git init
echo -e "\x1B[01;92m Pulling down the webgoat-N-docker repository \x1B[0m"
git pull https://raw.githubusercontent.com/leunammejii/webgoat-N-docker/master/setup.sh

echo -e "\x1B[01;92m Creating network, image, and container \x1B[0m"
docker-compose up -d

echo -e "\x1b[01;36m\n The build is complete! Please navigate to: \n\x1B[0m"
echo -e "\x1B[01;36m\t http://localhost:8080/WebGoat \x1B[0m"
