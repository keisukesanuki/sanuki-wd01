#!/bin/sh

ProcessName=httpd

count=`ps aux | grep $ProcessName | grep -v grep | wc -l`
if [ $count = 0 ]; then
        sudo systemctl restart $ProcessName
        echo "$(date)_Processlist is dead" >> /var/log/httpd/status_logs/statu_log.txt
else
        echo "$(date)_$ProcessName is alive" >> /var/log/httpd/status_logs/statu_log.txt
fi
