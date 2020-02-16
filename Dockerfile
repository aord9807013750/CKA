FROM centos:7
MAINTAINER Aord
RUN yum update -y
RUN yum install -y httpd
COPY index.html /var/www/
CMD [“/usr/sbin/httpd”,” -D”,” FOREGROUND”]
EXPOSE 8081
