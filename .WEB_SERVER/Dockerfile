#
# Apache + PHP
#
# 2017-01-15
#   CentOS 7.3 + epel,remi
#   Apache 2.4.6
#   PHP 7.0.14

FROM centos:7
MAINTAINER wikum

# update yum
RUN yum update -y && \
    yum clean all

# epel,remi
RUN yum install -y epel-release && \
	yum install -y http://rpms.famillecollet.com/enterprise/remi-release-7.rpm && \
    yum clean all

#install php
RUN yum install --enablerepo=remi-php70 -y php

#install php modules
RUN yum install --enablerepo=remi-php70 -y pdo-mysql php-mysql php-gd php-dom php-mbstring php-mcrypt php-pecl-apcu php-pecl-zendopcache 

#install apache
RUN yum install -y httpd

#instal nfs
# RUN yum -y install nfs-utils libnfsidmap
# RUN systemctl enable rpcbind
# RUN rpcbind start

#RUN mkdir -p /var/www/html/sites/default/files


EXPOSE 80

COPY httpd.conf /etc/httpd/conf/httpd.conf
COPY vhost.conf /etc/httpd/conf.d/vhost.conf
COPY php.ini /etc/php.ini

COPY ./entry.sh /
RUN chmod 777 /entry.sh

ENTRYPOINT ["/entry.sh"]