#!/bin/bash

num_stop=`/etc/init.d/keepalived status|grep stop|wc -l`
if [ $num_stop -eq 1 ]
then
    /etc/init.d/keepalived restart
fi
