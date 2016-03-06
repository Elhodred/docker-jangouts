#!/bin/bash

cd /tmp
git clone https://github.com/sctplab/usrsctp
cd usrsctp
./bootstrap
./configure --prefix=/usr && make && make install
cd /tmp
