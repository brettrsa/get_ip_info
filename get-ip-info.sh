#!/bin/bash
#
# Start

if [ ! $1 ];then
      echo -e "Usage: "
      echo -e "./ip-info <ip address>"
      echo -e "./ip-info me - Info about your source public ip address"
      exit
fi

curl -s http://dazzlepod.com/ip/$1.json | tr "," \\n | sed 's/"//g' | sed 's/{//g' | sed 's/}//g'

# End
