#!/bin/bash

if [ "${SS_CONFIG}" != "" ]; then
    ./shadowsocks2 -c ${SS_CONFIG} -verbose
else
    ./shadowsocks2 $@
fi