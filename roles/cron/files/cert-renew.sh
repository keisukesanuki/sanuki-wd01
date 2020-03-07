#!/bin/sh

## apache用
##.htaccessをリネームする
#mv /var/www/vhosts/fingerease.work/public_html/.htaccess /var/www/vhosts/fingerease.work/public_html/.htaccess.bak
#
##証明書の更新
#/bin/certbot renew
#
##apacheの設定変更
#systemctl restart httpd
#
##.htaccessをリネームする
#mv /var/www/vhosts/fingerease.work/public_html/.htaccess.bak /var/www/vhosts/fingerease.work/public_html/.htaccess
#
#########################################################################################################################

DOMAIN=test.com

## nginx用
mv /etc/nginx/conf.d/vhost.$DOMAIN_ssl.conf /etc/nginx/conf.d/vhost.$DOMAIN_ssl.conf.tmp

mv /etc/nginx/conf.d/vhost.$DOMAIN.conf.tmp /etc/nginx/conf.d/vhost.$DOMAIN.conf

## 証明書の更新
/bin/certbot renew

mv /etc/nginx/conf.d/vhost.$DOMAIN.conf /etc/nginx/conf.d/vhost.$DOMAIN.conf.tmp

mv /etc/nginx/conf.d/vhost.$DOMAIN_ssl.conf.tmp /etc/nginx/conf.d/vhost.$DOMAIN_ssl.conf

systemctl reload nginx


