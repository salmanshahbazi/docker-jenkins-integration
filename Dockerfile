FROM centos

RUN yum -y update
RUN yum -y remove java
RUN yum install -y \
       java-1.8.0-openjdk \
       java-1.8.0-openjdk-devel

USER    root
EXPOSE 8080
ADD target/docker-jenkins-integration.jar docker-jenkins-integration.jar
ENTRYPOINT ["java", "-jar", "/docker-jenkins-integration.jar"]