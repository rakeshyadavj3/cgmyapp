FROM maven
WORKDIR /var/lib/jenkins/workspace/rj1/
RUN pwd

FROM tomcat
RUN pwd
COPY . /usr/local/tomcat/webapps
RUN pwd
