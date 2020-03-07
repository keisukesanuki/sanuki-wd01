#!/bin/bash

ProcessName=mysqld

mkdir -p /var/log/status_logs/mysqld/
count=`ps aux | grep $ProcessName | grep -v grep | wc -l`
if [ $count = 0 ]; then
        sudo systemctl restart $ProcessName
        echo "$(date)_$ProcessName is dead" >> /var/log/status_logs/mysqld/statu_log.txt
else
        echo "$(date)_$ProcessName is alive" >> /var/log/status_logs/mysqld/statu_log.txt
fi
