# [webgoat-N-docker]  
##### Quickly stand up WebGoat by OWASP using Docker.  

#### Description  
This project is used to Dockerize the OWASP WebGoat project.  

#### Prerequisites  
- Bash  
- Curl  
- Docker-Engine  
- Docker-Compose  
- Git

#### Setup  
Open a terminal and run the following command:  
```bash
git clone https://github.com/leunammejii/webgoat-N-docker.git
cd webgoat-N-docker
docker-compose up -d webgoat
```
If you are running this from a Raspberry Pi 3 (only tested on the 3), run the following command:
```bash
docker-compose up -d webgoat_armhf
```

When the build is complete, navigate to:    
```bash
http://HOSTIP:8080/WebGoat
```

#### Rebuild  
Once you have run the first command, you can now rebuild the containers at anytime with the following commands:  

```bash
cd webgoat-N-docker  
docker-compose down  
docker-compose up -d  
```

#### Destroy  
To remove the project completely,  run the following commands:  
```bash
cd webgoat-N-docker  
docker-compose down --rmi all  
cd $HOME  
sudo rm -r ./leunammejii/webgoat-N-docker
```
