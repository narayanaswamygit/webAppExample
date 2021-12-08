FROM tomcat:8.0.20-jre8
COPY target/  /usr/local/tomcat/webapps/
