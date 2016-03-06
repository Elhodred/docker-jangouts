#!/bin/bash

cd /tmp
wget https://github.com/cisco/libsrtp/archive/v1.5.0.tar.gz
tar xfv v1.5.0.tar.gz
cd libsrtp-1.5.0
./configure --prefix=/usr --enable-openssl
make libsrtp.so && make install
cd /tmp
