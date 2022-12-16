FROM maven
WORKDIR /var/lib/jenkins/workspace/rj1/
RUN pwd

FROM tomcat
RUN pwd
COPY *.jar /var/tomcat/webapps
RUN pwd
