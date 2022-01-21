FROM ubuntu
RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat
RUN apt-get install tomcat9 tomcat9-admin
RUN systemctl enable tomcat9
RUN systemctl start tomcat9
RUN apt-get install openjdk-8-jdk

WORKDIR /opt/tomcat/webapps
COPY target/*.war  /usr/local/tomcat/webapps/*.war

EXPOSE 8888

CMD ["/opt/tomcat/bin/catalina.sh", "run"]


