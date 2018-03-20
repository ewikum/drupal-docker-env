#!/bin/sh
echo "Please wait .... "
mysql -u root -proot -e "DROP database $1;"
mysql -u root -proot -e "Create database $1;"
mysql -u root -proot -D $1 < /DBS/$1.sql