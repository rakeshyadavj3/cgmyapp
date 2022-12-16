FROM maven
WORKDIR /var/lib/jenkins/workspace/rj1
RUN mvn -f clean package

FROM tomcat
COPY *.jar /var/tomcat/webapps
