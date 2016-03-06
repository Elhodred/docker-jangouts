#!/bin/sh

if [-z "$IP"]; then
    /opt/janus/bin/janus
else
    /opt/janus/bin/janus --nat-1-1=$IP
fi
