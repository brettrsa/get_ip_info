#!/bin/bash
#
# Start


get_ip_info()
{
    echo '---------------------------------------'
    echo 'Grabbing info..........................'
    ip=$(curl -s http://api.ipify.org)
    curl -s http://dazzlepod.com/ip/$ip.json | tr "," \\n | sed 's/"//g' | sed 's/{//g' | sed 's/}//g'
}

get_ip_info

# End
