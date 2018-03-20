#!/bin/sh
echo "Please wait .... "
mysqldump -uroot -proot $1 > /DB_DUMPS/$1-$(env TZ=Asia/Tokyo date +%Y%m%d-%H%M%S).sql