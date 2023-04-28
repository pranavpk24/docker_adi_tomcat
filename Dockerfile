FROM adhig93/tomcat-conf
RUN apt-get update && apt-get install -y wget
RUN wget https://get.jenkins.io/war-stable/2.387.2/jenkins.war -P /usr/local/tomcat/webapps/
RUN sed -i 's/<Connector port="8080"/<Connector port="8082"/g' /usr/local/tomcat/conf/server.xml
EXPOSE 8082
EXPOSE 8080
