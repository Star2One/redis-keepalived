#!/bin/bash
###/etc/keepalived/scripts/redis_backup.sh
pid=$$

echo "`date +'%Y-%m-%d:%H:%M:%S'`|$pid|state: redis fault..." >> $LOGFILE
