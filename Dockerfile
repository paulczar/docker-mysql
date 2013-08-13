# This file creates a container that runs MySQL Server
#
# Author: Paul Czarkowski
# Date: 08/04/2013


FROM ubuntu:12.04
MAINTAINER Paul Czarkowski "paul@paulcz.net"

RUN apt-get update
RUN apt-get -y install mysql-server

ADD mysql-listen.cnf /etc/mysql/conf.d/mysql-listen.cnf

# Start mysql server
CMD ["/usr/bin/mysqld_safe"]

