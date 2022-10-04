# devops-hw7

Maven builds an artefact from 'boxfuse-sample-java-war-hello', Tomcat runs webserver with the artefact

**maven:3.8-eclipse-temurin-11-alpine + tomcat:9.0.67-jre11**

Install:

    git clone https://github.com/LovingFox/devops-hw7.git
    cd devops-hw7
    docker-compose up -d 

Test:

    curl 0.0.0.0:8080

 Stop and remove:

    docker-compose rm -s -v
    docker rmi devops-hw7-maven:latest

**maven:3.8-eclipse-temurin-11-alpine + adoptopenjdk/openjdk11:jre-11.0.6_10-alpine**

Install:

    git clone https://github.com/LovingFox/devops-hw7.git
    cd devops-hw7
    docker-compose -f docker-compose.alpine.yml up -d 

Test:

    curl 0.0.0.0:8080

 Stop and remove:

    docker-compose -f docker-compose.alpine.yml rm -s -v
    docker rmi devops-hw7-maven:latest
    docker rmi devops-hw7-web:latest

