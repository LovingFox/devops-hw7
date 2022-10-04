# devops-hw7

Maven builds an artefact from 'boxfuse-sample-java-war-hello'
Tomcat run webserver with the artefact

Install:

    git clone https://github.com/LovingFox/devops-hw7.git
    cd devops-hw7
    docker-compose up -d 

Test:

    curl 0.0.0.0:8080

 Stop and remove:

    docker-compose rm -s -v
    docker rmi devops-hw7-maven:latest

