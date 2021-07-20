From tomcat
RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

COPY target/addressbook.war $PROJECT_HOME/addressbook.war
ADD $PROJECT_HOME/addressbook.war /usr/local/tomcat/webapps

WORKDIR $PROJECT_HOME
CMD ["catalina.sh", "run"]
EXPOSE 8080
