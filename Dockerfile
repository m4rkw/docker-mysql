FROM m4rkw/ubuntu

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -yq install mysql-server mysql-client

RUN mkdir -p /var/run/mysqld
RUN chown mysql:mysql /var/run/mysqld

ADD assets /

EXPOSE 3306
