FROM debian

MAINTAINER Elhodred "alfonso.pinto@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

WORKDIR /tmp

COPY *.sh /tmp/

RUN apt-get update && apt-get -y -qq install build-essential \
    wget git cmake libmicrohttpd-dev \
    libjansson-dev libnice-dev libssl-dev libsofia-sip-ua-dev \
    libglib2.0-dev libopus-dev libogg-dev pkg-config gengetopt \
    libtool automake && \
    ./install_libsrtp.sh && \
    ./install_usrsctp.sh && \
    ./install_libwebsockets.sh && \
    ./install_janus.sh && \
    rm /opt/janus/etc/janus/*.sample

WORKDIR /opt/janus/
ENV DEBIAN_FRONTEND dialog

COPY ./config/*.cfg /opt/janus/etc/janus/
COPY ./run.sh /opt/janus/

CMD /opt/janus/run.sh

#################
# Build:
# docker build --rm -t elhodred/janus .

