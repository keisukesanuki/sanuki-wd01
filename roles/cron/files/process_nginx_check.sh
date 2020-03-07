#!/bin/sh

ProcessName=nginx

mkdir -p /var/log/status_logs/nginx/
count=`ps aux | grep $ProcessName | grep -v grep | wc -l`
if [ $count = 0 ]; then
        sudo systemctl restart $ProcessName
        echo "$(date)_Processlist is dead" >> /var/log/status_log/nginx/statu_log.txt
else
        echo "$(date)_$ProcessName is alive" >> /var/log/status_logs/nginx/statu_log.txt
fi
