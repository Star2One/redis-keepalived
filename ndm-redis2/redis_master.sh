#!/bin/bash
###/etc/keepalived/scripts/redis_master.sh
rediscli="/usr/bin/redis-cli"
logfile="/tmp/redis-state.log"
pid=$$

echo "`date +'%Y-%m-%d:%H:%M:%S'`|$pid|state:[master] Run slaveof no one,close master/slave" >> $logfile
$rediscli -h ndm-redis2 -p 6379 SLAVEOF NO ONE >> $logfile 2>&1
echo "`date +'%Y-%m-%d:%H:%M:%S'`|$pid|state:[master] wait other slave connect...." >> $logfile
