#!/bin/bash
###/etc/keepalived/scripts/redis_backup.sh
rediscli="/usr/bin/redis-cli"
logfile="/tmp/redis-state.log"
pid=$$

echo "`date +'%Y-%m-%d:%H:%M:%S'`|$pid|state:[slaver] Run 'SLAVEOF ndm-redis2 6391'" >> $logfile
$rediscli -h ndm-redis2 -p 6379 SLAVEOF ndm-redis1 6379 >> $logfile  2>&1
echo "`date +'%Y-%m-%d:%H:%M:%S'`|$pid|state:[slaver] slave connect to ndm-redis2 ok..." >> $logfile

