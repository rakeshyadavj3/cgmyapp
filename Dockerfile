FROM maven
WORKDIR /var/lib/jenkins/workspace/rj1
*RUN mvn install:install-file -DgroupId="javax.jms" -DartifactId="jms" -Dversion="1.1" -Dpackaging="jar" -Dfile="jms-1.1.jar"
RUN mvn -f /var/lib/jenkins/workspace/rj1 clean package

FROM tomcat
COPY *.jar /var/tomcat/webapps
