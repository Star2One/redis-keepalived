# Redis HA by Keepalived

This project help you deploy redis with ha by keepalived.  
A redis cluster contains a redis master and a redis slave.The redis slave sync data from redis master.


## Environment

- OS  
|Server|OS|Redis Port|Role|  
|---|---|---|---|  
|ndm-redis1|centos6|6379|redis master|  
|ndm-redis2|centos6|6379|redis slave|  

- VIP  
192.168.100.233


## Install

- Install keepalived use the command yum.  
- Copy the following script (`redis_master.sh\redis_backup.sh\redis_fault.sh\redis_stop.sh`) to the `/etc/keepalived/scripts/` directory.  
- Copy keepalived.conf to `/etc/keepalived/` directory.  
- Set the crontab job  
- Start keepalived service  

## Release History
* 0.0.1
    * Init

## Meta

Distributed under the Apache license. 
See ``LICENSE`` for more information.

[https://github.com/weittor](https://github.com/weittor/)
