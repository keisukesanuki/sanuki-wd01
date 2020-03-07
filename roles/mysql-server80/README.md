mysql-server80
=========

- レポジトリの追加
- my.cnf設定
- mysqlインストール
- expectインストール
- mysql再起動
- mysql初期設定(mysql_secure_installation)

Requirements
------------

- CentOS7

Role Variables
--------------

```
---
# vars file for db_backup
innodb_buffer_pool_size: 256M
key_buffer_size: 128M
```

```
vi ./files/mysql_secure_installation
====================================
#変更後のDBパスワードを設定
db_pass=aes7sChea7v:12
```

Dependencies
------------

- none

Example Playbook
----------------

- none

License
-------

BSD

Author Information
------------------

keisuke sanuki
