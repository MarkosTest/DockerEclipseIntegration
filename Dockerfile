FROM openjdk:8

ADD target/docker-eclipse-integration.jar docker-eclipse-integration.jar
#EXPOSE 8085
ENV markos_var=markos_env_value

#ENTRYPOINT ["java", "-jar", "docker-eclipse-integration.jar"]
ENTRYPOINT [ "sh", "-c", "java -agentlib:jdwp=transport=dt_socket,address=8000,server=y,suspend=y -jar docker-eclipse-integration.jar" ]