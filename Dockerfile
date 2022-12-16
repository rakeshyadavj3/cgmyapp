FROM maven
WORKDIR /var/lib/jenkins/workspace/rj1
RUN mvn clean package

FROM tomcat
cp *.jar /var/tomcat/webapps
