FROM openjdk:8

ADD target/docker-eclipse-integration.jar docker-eclipse-integration.jar
#EXPOSE 8085

ENTRYPOINT ["java", "-jar", "docker-eclipse-integration.jar"]