FROM java:openjdk-8-jre
MAINTAINER leunammejii

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y vim

WORKDIR /root

RUN wget https://s3.amazonaws.com/webgoat-war/webgoat-container-7.0.1-war-exec.jar

CMD java -jar webgoat-container-7.0.1-war-exec.jar --httpPort 8080
