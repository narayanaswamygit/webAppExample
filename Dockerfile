FROM tomcat:jre8-temurin-focal
COPY target/*.war  /usr/local/tomcat/webapps/*.war

EXPOSE 8888

CMD [“catalina.sh”, “run”]



