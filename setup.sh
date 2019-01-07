#!/bin/bash
SERVER_IP=`ifconfig eth0 | grep inet | awk '{print $2}'`
HOST_IP=`netstat -nr | grep -m1 eth0 | awk '{print $2}'`

echo "STARTING SETUP DARKEDEN SQL script."

str='Database credentials:  DATABASE> '
str+=${DB_NAME}
str+='    | USER> '
str+=${DB_USERNAME}
str+='    | PASSWORD> '
str+=${DB_PASSWORD}

echo ''
echo ${str}
echo ''

echo 'Dropping (IF EXISTS) database' && mysql -uroot -p${MYSQL_ROOT_PASSWORD} -e "drop database ${DB_NAME};"

echo 'Starting creates.sql' && cat /home/darkeden/sql/creates.sql | mysql -u${DB_USERNAME} -p${DB_PASSWORD} && echo 'creates.sql done...'
echo 'Starting inserts.sql' && cat /home/darkeden/sql/inserts.sql | mysql -u${DB_USERNAME} -p${DB_PASSWORD} && echo 'inserts.sql done...'

echo "Checking if sqls was successfully..."
echo "Showing data in database '${DB_NAME}' on table 'WorldDBInfo' with host '${SERVER_IP}':"
mysql -u${DB_USERNAME} -p${DB_PASSWORD} -h${SERVER_IP} -e "select * from dkdocker.WorldDBInfo;"

echo ''
echo 'Showing mysql users and hosts:'
mysql -u${DB_USERNAME} -p${DB_PASSWORD} -h${SERVER_IP} -e "select User, Host, Password from mysql.user;"

echo ''
echo "FINISHING SETUP DARKEDEN SQL script."
