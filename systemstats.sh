#!/bin/bash
#
# Based on https://md3v.com/create-a-linux-server-status-motd 
# Server Status Script
# Version 0.1.3 m
# Updated: July 26th 2011 m

CPUCORES=$(cat /proc/cpuinfo | grep -c processor)
UP=$(echo `uptime` | awk '{ print $3 " " $4 }')

echo "
Welcome XXX System

System Status updated: `date`
- Server Name               = `hostname`.local
- Local IP                  = `hostname -I`
- OS Version                = `cat /etc/redhat-release`
- System Uptime             = `echo $UP`
- CPU Core / Memory         = `echo $CPUCORES` / `awk '{ printf "%.2f", $2/1024/1024 ; exit}' /proc/meminfo` GB
- Swap in use               = `free -m | tail -n 1 | awk {'print $3'}` Mb
- Disk space used           = `df --total -h | tail -1 | awk '{ a = $3; b = $2; c = $5 } END { print c, "(", a, "/", b, ")" }'`
- Disk space available      = `df --total -h | tail -1 | awk '{ a = $4; b = $2; c = $5 } END { print (100-c)"%", "(", a, "/", b, ")" }'`

All passwords: xxx

=== start XXX ===
su - xuser
startappx

=== stop XXX ===
su - xuser
stopappx

===============
Edit /usr/local/bin/systemstats.sh script for update this message
" > /etc/motd

# End of script
