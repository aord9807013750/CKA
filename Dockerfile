FROM centos:7
MAINTAINER Aord
RUN yum update
RUN yum install -y httpd
RUN systemctl start httpd
COPY index.html /var/www/
EXPOSE 8081
