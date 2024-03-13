FROM centos:7.9.2009
MAINTAINER "Prasad"
RUN touch /opt/file1
RUN mkdir /opt/dir1
RUN yum install git -y
RUN git config --global user.name "Prasad"
RUN git config --global user.email "prasad@gmail.com"
WORKDIR /opt
RUN git clone https://github.com/polarapu/batch-101.git
RUN yum install wget -y
RUN wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.19/bin/apache-tomcat-10.1.19.tar.gz --no-check-certificate
RUN tar -xvf apache-tomcat-10.1.19.tar.gz
COPY tomcat-users.xml /opt/apache-tomcat-10.1.19/conf/
RUN yum install java -y
#ENV export JAVA_HOME=/path
EXPOSE 8080
#CMD cat /opt/apache-tomcat-10.1.19/conf/tomcat-users.xml
#ENTRYPOINT sleep 20
#CMD sleep 20
#CMD sh /opt/apache-tomcat-10.1.19/bin/startup.sh
#ENTRYPOINT java -jar test.jar
