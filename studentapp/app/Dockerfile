FROM ubuntu:22.04
RUN apt update -y && \
    apt install -y curl tar openjdk-11-jdk
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.113/bin/apache-tomcat-9.0.113.tar.gz /opt/
WORKDIR /opt/
RUN tar -xzf /opt/apache-tomcat-9.0.113.tar.gz && \
    rm /opt/apache-tomcat-9.0.113.tar.gz
COPY context.xml /opt/apache-tomcat-9.0.113/conf/
ADD https://s3-us-west-2.amazonaws.com/studentapi-cit/student.war /opt/apache-tomcat-9.0.113/webapps/student.war
ADD https://s3-us-west-2.amazonaws.com/studentapi-cit/mysql-connector.jar /opt/apache-tomcat-9.0.113/lib/mysql-connector.jar
EXPOSE 8080
RUN chmod +x /opt/apache-tomcat-9.0.113/bin/catalina.sh
CMD ["/opt/apache-tomcat-9.0.113/bin/catalina.sh","run"]
