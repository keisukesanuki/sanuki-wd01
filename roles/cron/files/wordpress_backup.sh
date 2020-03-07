#!/bin/sh

#ドキュメントルート
DOC_ROOT=

mkdir -p /var/contents_backup/

#wordpressのバックアップ
tar -czvf /var/contents_backup/wordpress_$(date +"%Y%m%d").tar.gz $DOC_ROOT/wordpress
