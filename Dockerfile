FROM base-img:latest
MAINTAINER salman_shahbazi
USER    root
EXPOSE 8080
ADD target/docker-jenkins-integration.jar docker-jenkins-integration.jar
ENTRYPOINT ["java", "-jar", "/docker-jenkins-integration.jar"]