FROM tomcat:latest
COPY target/*.war /usr/local/tomcat/webapps/*.war
CMD ["catalina.sh", "run"]

