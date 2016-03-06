FROM httpd

MAINTAINER Elhodred "alfonso.pinto@gmail.com"

COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./httpd-ssl.conf /usr/local/apache2/conf/extra/httpd-ssl.conf
COPY ./server.* /usr/local/apache2/conf/

ENV DEBIAN_FRONTEND noninteractive

WORKDIR /tmp
RUN apt-get update && apt-get -y -qq install curl && \
    mkdir /usr/local/apache2/docs/ && \
    curl -OL https://github.com/jangouts/jangouts/archive/v0.4.2.tar.gz && \
    tar -xvzf v0.4.2.tar.gz && \
    mv jangouts-0.4.2/dist  /usr/local/apache2/docs/jangouts

WORKDIR /usr/local/apache2
ENV DEBIAN_FRONTEND dialog
