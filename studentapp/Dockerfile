#Base image
FROM ubuntu:22.04

#Install java
RUN apt update -y && \
    apt install -y unzip openjdk-11-jdk -y

#Add tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.113/bin/apache-tomcat-9.0.113.tar.gz /opt/

#setup working dir
WORKDIR /opt/

#extract tomcat
RUN tar -xzf /opt/apache-tomcat-9.0.113.tar.gz && \
    rm -rf /opt/apache-tomcat-9.0.113.tar.gz

#conf-student-mysql
COPY context.xml /opt/apache-tomcat-9.0.113/conf/
ADD https://s3-us-west-2.amazonaws.com/studentapi-cit/student.war /opt/apache-tomcat-9.0.113/webapps/student.war 
ADD https://s3-us-west-2.amazonaws.com/studentapi-cit/mysql-connector.jar /opt/apache-tomcat-9.0.113/lib/mysql-connector.jar

EXPOSE 8080

#Make executable 
RUN chmod +x /opt/apache-tomcat-9.0.113/bin/catalina.sh

#Run
CMD ["/opt/apache-tomcat-9.0.113/bin/catalina.sh","run"]


