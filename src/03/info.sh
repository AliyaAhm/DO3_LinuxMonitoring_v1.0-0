#!/bin/bash

echo -e $parametr1$parametr2 HOSTNAME$end = $parametr3$parametr4$HOSTNAME$end
echo -e $parametr1$parametr2 TIMEZONE$end = $parametr3$parametr4$(cat /etc/timezone) $(date +%Z) $(date "+%z")$end
echo -e $parametr1$parametr2 USER$end = $parametr3$parametr4$USER$end
echo -e $parametr1$parametr2 OS$end = $parametr3$parametr4$(cat /etc/issue|awk '{print $1,$2,$3}')$end
echo -e $parametr1$parametr2 DATE$end = $parametr3$parametr4$(date +"%d %b %Y %T")$end
echo -e $parametr1$parametr2 UPTIME$end = $parametr3$parametr4$(uptime -p)$end
echo -e $parametr1$parametr2 UPTIME_SEC$end = $parametr3$parametr4$(awk '{ print $1 }' /proc/uptime)$end
echo -e $parametr1$parametr2 IP$end = $parametr3$parametr4$(hostname -I)$end
echo -e $parametr1$parametr2 MASK$end = $parametr3$parametr4$(ifconfig | grep -m1 netmask | awk '{ print $4 }')$end
echo -e $parametr1$parametr2 GATEWAY$end = $parametr3$parametr4$(ip rout show | grep default | awk '{ print $3 }')$end
echo -e $parametr1$parametr2 RAM_TOTAL$end = $parametr3$parametr4$(free -t -m | grep Total: | awk '{ printf "%.3f GB", $2/1024}')$end
echo -e $parametr1$parametr2 RAM_USED$end = $parametr3$parametr4$(free -t -m | grep Total: | awk '{ printf "%.3f GB", $3/1024}')$end
echo -e $parametr1$parametr2 RAM_FREE$end = $parametr3$parametr4$(free -t -m | grep Total: | awk '{ printf "%.3f GB", $4/1024}')$end
echo -e $parametr1$parametr2 SPACE_ROOT$end = $parametr3$parametr4$(df -hk | grep "\/$" | awk '{printf "%.2f\n MB", $2/1024}')$end
echo -e $parametr1$parametr2 SPACE_ROOT_USED$end = $parametr3$parametr4$(df -hk | grep "\/$" | awk '{printf "%.2f\n MB", $3/1024}')$end
echo -e $parametr1$parametr2 SPACE_ROOT_FREE$end = $parametr3$parametr4$(df -hk | grep "\/$" | awk '{printf "%.2f\n MB", $4/1024}')$end