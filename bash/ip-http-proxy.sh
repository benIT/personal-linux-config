#!/bin/bash

#usage:
# wget https://raw.githubusercontent.com/benIT/personal-linux-config/master/bash/ip-http-proxy.sh -O /usr/local/bin/ip-http-proxy.sh
# chmod +x /usr/local/bin/ip-http-proxy.sh
# touch /var/log/ip-http-proxy.log
# ip-http-proxy.sh >> /var/log/ip-http-proxy.log
# At every 30th minute past every hour from 8 through 18 on every day-of-week from Monday through Friday.
# */30 8-18 * * 1-5 /usr/local/bin/ip-http-proxy.sh >> /var/log/ip-http-proxy.sh.log 2>&1
# analyse log:
# grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}'  /var/log/ip-http-proxy.log | uniq

function log {
    echo "[$(date --rfc-3339=seconds)] : $1 : $2"
}
if [ -z "$http_proxy" ] || [ -z "$https_proxy" ]
then
  log "ERROR" "\$http_proxy or \$https_proxy is missing."
  exit 1
fi
IP=$(curl --request GET -sL --url 'https://ifconfig.me')
log "INFO" "$IP"