#!/bin/bash

cd /tmp
git clone https://github.com/meetecho/janus-gateway.git
cd janus-gateway
sh autogen.sh
./configure --prefix=/opt/janus --disable-rabbitmq
make
make install
cd /tmp
