FROM maven
WORKDIR /var/lib/jenkins/workspace/rj1/
RUN mvn clean package

FROM tomcat
COPY *.jar /var/tomcat/webapps
