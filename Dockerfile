FROM openjdk:latest
EXPOSE 8888
ARG WAR_FILE=target/config-server.war
COPY ${WAR_FILE} configserver.war
ENTRYPOINT ["java","-jar","configserver.war"]