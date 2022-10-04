FROM: maven:3.8-eclipse-temurin-11-alpine
RUN: apk update && \
     apk add git
RUN: git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git && \
     cd boxfuse-sample-java-war-hello && \
     mvn package
