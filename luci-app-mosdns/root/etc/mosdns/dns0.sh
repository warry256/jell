#!/bin/bash -e
DNS0=`ubus call network.interface.wan status | jsonfilter -e '@["dns-server"][0]'`
if [[ $DNS0 =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
  echo "$DNS0"
else
  echo "119.29.29.29"
fi
