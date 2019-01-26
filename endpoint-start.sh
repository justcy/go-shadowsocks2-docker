#!/bin/bash

if [ "${SS_CONFIG}" != "" ]; then
    ./shadowsocks2 -s ${SS_CONFIG} -verbose
else
    ./shadowsocks2 $@
fi