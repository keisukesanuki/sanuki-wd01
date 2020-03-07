#!/bin/sh

openssl x509 -days 3650 -req -signkey /var/tmp/server.key < /var/tmp/server.csr > /var/tmp/server.crt
