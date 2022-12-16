FROM maven
WORKDIR /var/lib/jenkins/workspace/rj1/

FROM tomcat
COPY *.jar /var/tomcat/webapps
