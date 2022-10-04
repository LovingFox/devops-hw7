FROM maven:3.8-eclipse-temurin-11-alpine
RUN apk update && \
    apk add git
WORKDIR /
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR boxfuse-sample-java-war-hello
CMD mvn package && \
    cp target/hello-*.war /webapps/ROOT.war
