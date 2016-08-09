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
bash <(curl -s https://raw.githubusercontent.com/leunammejii/webgoat-N-docker/master/setup.sh)  
```  

When the build is complete, navigate to:    
```bash  
http://localhost:8080/WebGoat
```  

#### Destroy & Rebuild  
Once you have run the first command, you can now destroy and rebuild the  
containers with the following commands:  

```bash  
cd ~/leunammejii/webgoat-N-docker/docker-compose  
docker-compose down  
docker-compose up -d  
```  

To remove the project completely,  run the following commands:  
```bash  
cd ~/leunammejii/webgoat-N-docker/docker-compose  
docker-compose down --rmi all  
cd $HOME  
sudo rm -r ./leunammejii/webgoat-N-docker
```  
