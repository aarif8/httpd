FROM 		centos:7

MAINTAINER 	aarif@ilg.cat

RUN 		yum update -y && yum clean all
RUN 		yum install httpd net-tools -y && yum clean all

EXPOSE 		80

ADD run-httpd.sh /run-httpd.sh
RUN chmod -v +x /run-httpd.sh

CMD ["/run-httpd.sh"]
