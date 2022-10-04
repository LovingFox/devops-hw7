FROM maven:3.8-eclipse-temurin-11-alpine
RUN apk update && \
    apk add git
ENV SRC=boxfuse-sample-java-war-hello
WORKDIR /
RUN test -d $SRC && rm -rf $SRC
RUN git clone https://github.com/boxfuse/$SRC.git
WORKDIR /$SRC
CMD mvn package && \
    rm -rf /webapps/ROOT* && \
    cp target/hello-*.war /webapps/ROOT.war
