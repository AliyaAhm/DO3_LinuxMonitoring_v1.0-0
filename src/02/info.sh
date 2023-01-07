#!/bin/bash

info () 
{
	echo 'HOSTNAME = '$HOSTNAME
	echo 'TIMEZONE = '$(cat /etc/timezone) $(date +%Z) $(date "+%z")
	echo 'USER = '$USER
	echo 'OS = '$(cat /etc/issue | awk '{print $1,$2,$3}')
	echo 'DATE = '$(date +"%d %b %Y %T")
	echo 'UPTIME = '$(uptime -p)
	echo 'UPTIME_SEC = '$(awk '{ print $1 }' /proc/uptime)
	echo 'IP = '$(hostname -I)
	echo 'MASK = '$(ifconfig | grep -m1 netmask | awk '{ print $4 }')
	echo 'GATEWAY = '$(ip rout show | grep default | awk '{ print $3 }')
	echo 'RAM_TOTAL = '$(free -t -m | grep Total: | awk '{ printf "%.3f GB", $2/1024}')
	echo 'RAM_USED = '$(free -t -m | grep Total: | awk '{ printf "%.3f GB", $3/1024}')
	echo 'RAM_FREE = '$(free -t -m | grep Total: | awk '{ printf "%.3f GB", $4/1024}')
	echo 'SPACE_ROOT = '$(df -hk | grep "\/$" | awk '{printf "%.2f\n MB", $2/1024}')
	echo 'SPACE_ROOT_USED = '$(df -hk | grep "\/$" | awk '{printf "%.2f\n MB", $3/1024}')
	echo 'SPACE_ROOT_FREE = '$(df -hk | grep "\/$" | awk '{printf "%.2f\n MB", $4/1024}')
}