FROM tomcat
RUN pwd
WORKDIR /var/lib/jenkins/workspace/rj1/target
RUN pwd
COPY . /usr/local/tomcat/webapps
RUN pwd
EXPOSE 80
