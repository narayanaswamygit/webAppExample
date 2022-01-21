FROM tomcat:8.0
COPY target/*.war /usr/local/tomcat/webapps/*.war
CMD ["catalina.sh", "run"]

