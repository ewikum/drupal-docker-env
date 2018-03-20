FROM mysql:5.6
COPY ./my.cnf /etc/mysql/conf.d/

ENV MYSQL_DATABASE=sample \
    MYSQL_ROOT_PASSWORD=root

ADD ./initdb.sh /initdb.sh

ADD ./dumpdb.sh /dumpdb.sh

RUN ["chmod", "+x", "/initdb.sh"]
RUN ["chmod", "+x", "/dumpdb.sh"]

EXPOSE 3306
