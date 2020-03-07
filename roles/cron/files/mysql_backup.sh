#!/bin/sh

#MySQLのパスワードファイル
MySQL_PASSWD=/usr/local/etc/my_passwd.conf
#バックアップを取得するDB名
DB_NAME=wp_db

mkdir -p /var/db_backup/

#wp_dbのバックアップを取得する
mysqldump --defaults-extra-file=$MySQL_PASSWD $DB_NAME > /var/db_backup/dump_$(date +"%Y%m%d").sql
