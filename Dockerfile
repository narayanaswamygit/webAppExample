FROM tomcat:jdk8-temurin-focal
COPY target/*.war  /usr/local/tomcat/webapps/*.war

CMD ["catalina.sh", "run"]

EXPOSE 8787


