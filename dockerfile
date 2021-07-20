From tomcat
ADD addressbook.war /usr/local/tomcat/webapps
EXPOSE 8082
CMD ["catalina.sh", "run"]
