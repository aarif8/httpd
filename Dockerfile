FROM 		centos:latest

MAINTAINER 	aarif@ilg.cat

RUN 		yum update -y && yum clean all
RUN 		yum install httpd net-tools -y && yum clean all

EXPOSE 		80

CMD		httpd -D FOREGROUND
