#!/bin/bash

#usage:
# wget https://github.com/benIT/personal-linux-config/blob/master/bash/ip-http-proxy.sh
# touch /var/log/ip-http-proxy.log
# ./ip-http-proxy.sh >> /var/log/ip-http-proxy.log
# */5 * * * * ./ip-http-proxy.sh >> /var/log/ip-http-proxy.log

function log {
    echo "[$(date --rfc-3339=seconds)] : $1 : $2"
}
if [ -z "$http_proxy" ]
then
      echo "\$http_proxy is missing."
      exit 1
fi
if [ -z "$https_proxy" ]
then
      echo "\$https_proxy is missing"
      exit 1
fi

IP=$(curl --request GET -sL --url 'https://ifconfig.me')
log "INFO" "$IP"