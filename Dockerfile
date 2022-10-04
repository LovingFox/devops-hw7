FROM maven:3.8-eclipse-temurin-11-alpine
RUN apk update && \
    apk add git
ENV SRC=boxfuse-sample-java-war-hello
WORKDIR /
RUN git clone https://github.com/boxfuse/$SRC.git
WORKDIR /$SRC
RUN mvn package
CMD rm -rf /webapps/ROOT* && \
    cp target/hello-*.war /webapps/ROOT.war
