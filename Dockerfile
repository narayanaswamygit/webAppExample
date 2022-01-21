FROM ubuntu
RUN apt-get update
RUN mkdir /opt/tomcat
RUN apt-get install tomcat9 tomcat9-admin
RUN systemctl enable tomcat9
RUN systemctl start tomcat9
COPY target/*.war /opt/tomcat/webapps/*.war

EXPOSE 8888

CMD ["/opt/tomcat/bin/catalina.sh", "run"]

