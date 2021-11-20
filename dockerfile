From tomcat
ENV PROJECT_HOME /usr/local/tomcat/webapps/

COPY target/addressbook.war $PROJECT_HOME/addressbook.war

WORKDIR $PROJECT_HOME
CMD ["catalina.sh", "run"]
EXPOSE 8080
