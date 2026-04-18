#!/bin/bash
channel="$1"
vec=$(shuf -n 1 /data/data/com.termux/files/home/xtreammulti/vavoo/veckey) 
authkey="$(curl -k --location --request POST 'https://www.vavoo.tv/api/box/ping2' --header 'Content-Type: application/json' --data "{\"vec\": \"$vec\"}" | sed 's#^.*"signed":"##' | sed "s#\"}}##g" | sed 's/".*//')"
echo  "https://vavoo.to/live2/play/$1?n=1&b=5&vavoo_auth=$authkey"
exit 0
