FROM tomcat:9.0.58-jdk8-temurin
COPY target/*.war  /usr/local/tomcat/webapps/*.war

CMD ["catalina.sh", "run"]

EXPOSE 8787


