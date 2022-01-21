FROM ubuntu
RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat
RUN curl - O https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.58/bin/apache-tomcat-9.0.58.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-9.0.58/* /opt/tomcat/.
RUN apt-get install openjdk-8-jdk

WORKDIR /opt/tomcat/webapps
COPY target/*.war  /usr/local/tomcat/webapps/*.war

EXPOSE 8888

CMD ["/opt/tomcat/bin/catalina.sh", "run"]


