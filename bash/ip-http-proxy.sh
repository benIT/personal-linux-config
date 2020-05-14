#!/bin/bash

#usage:
# wget https://raw.githubusercontent.com/benIT/personal-linux-config/master/bash/ip-http-proxy.sh -O /usr/local/bin/ip-http-proxy.sh
# chmod +x /usr/local/bin/ip-http-proxy.sh
# touch /var/log/ip-http-proxy.log
# ip-http-proxy.sh >> /var/log/ip-http-proxy.log
# * * * * * /usr/local/bin/ip-http-proxy.sh >> /var/log/ip-http-proxy.sh.log 2>&1
# analyse log:
# grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}'  /var/log/ip-http-proxy.log | uniq

function log {
    echo "[$(date --rfc-3339=seconds)] : $1 : $2"
}
current_hour=$(date +%H)
if [  $current_hour -ge 8 ] && [ $current_hour -le 18 ] ; then
    log "INFO" "running"
    if [ -z "$http_proxy" ] || [ -z "$https_proxy" ]
    then
          log "ERROR" "\$http_proxy or \$https_proxy is missing."
          exit 1
    fi
    IP=$(curl --request GET -sL --url 'https://ifconfig.me')
    log "INFO" "$IP"
else
     log "INFO" "skipping"
fi