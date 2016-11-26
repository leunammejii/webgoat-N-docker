FROM java:openjdk-8-jre
MAINTAINER leunammejii

WORKDIR /root

RUN wget https://github.com/WebGoat/WebGoat/releases/download/7.1/webgoat-container-7.1-exec.jar

CMD java -jar webgoat-container-7.1-exec.jar -httpPort 8080
