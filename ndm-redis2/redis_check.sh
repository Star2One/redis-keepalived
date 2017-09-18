#!/bin/bash
###/etc/keepalived/scripts/redis_check.sh
NDM6379=`/usr/bin/redis-cli -h ndm-redis2 -p 6379 PING`
if [ "$NDM6379" == "PONG" ] 
then
  echo $NDM6379
  exit 0
else
  echo $NDM6379
  /etc/init.d/keepalived stop
  exit 1
fi
