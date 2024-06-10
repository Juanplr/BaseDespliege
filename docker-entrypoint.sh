#!/bin/bash

if [ -f /var/lib/mysql/mysql.sock ]; then
  echo "MySQL socket file already exists, skipping creation"
else
  mkdir -p /var/lib/mysql
  mysqld_safe --socket=/var/lib/mysql/mysql.sock --user=mysql --basedir=/usr --datadir=/var/lib/mysql --port=3306
fi

mysql -uroot -p12345 -e "CREATE DATABASE prueba"
mysql -uroot -p12345 -e "GRANT ALL PRIVILEGES ON prueba.* TO 'usuario'@'%' IDENTIFIED BY 'contrasena'"

exec /usr/bin/mysqld_safe --socket=/var/lib/mysql/mysql.sock --user=mysql --basedir=/usr --datadir=/var/lib/mysql --port=3306