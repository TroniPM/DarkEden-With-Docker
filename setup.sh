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

echo "Dropping database: ${DB_NAME}" && mysql -uroot -p${MYSQL_ROOT_PASSWORD} -e "drop database ${DB_NAME};"
echo "Dropping database: ${DB_NAME_INFO}" && mysql -uroot -p${MYSQL_ROOT_PASSWORD} -e "drop database ${DB_NAME_INFO};"

echo 'Starting creates.sql' && cat /home/sql/creates.sql | mysql -u${DB_USERNAME} -p${DB_PASSWORD} && echo 'creates.sql done...'
echo 'Starting creates.sql' && cat /home/sql/creates_info.sql | mysql -u${DB_USERNAME} -p${DB_PASSWORD} && echo 'creates_info.sql done...'
echo 'Starting inserts.sql' && cat /home/sql/inserts.sql | mysql -u${DB_USERNAME} -p${DB_PASSWORD} && echo 'inserts.sql done...'

echo ''
echo ''
echo '###############################################################'
echo '###############################################################'
echo "############## Checking if SQLs was successfully ##############"
echo '###############################################################'
echo '###############################################################'

echo ''
echo "Showing data in '${DB_NAME}.WorldDBInfo' with '${DB_USERNAME}@${SERVER_IP}' (if nothing shows up, something was wrong):"
mysql -u${DB_USERNAME} -p${DB_PASSWORD} -h${SERVER_IP} -e "select * from ${DB_NAME}.WorldDBInfo;"
echo ''
echo "Showing dk users in '${DB_NAME}.Player' with '${DB_USERNAME}@${SERVER_IP}' (if nothing shows up, something was wrong):"
mysql -u${DB_USERNAME} -p${DB_PASSWORD} -h${SERVER_IP} -e "select PlayerID, Password, SSN, Access from ${DB_NAME}.Player;"
echo ''
echo "Showing mysql users and hosts with '${DB_USERNAME}@${SERVER_IP}' (if nothing shows up, something was wrong):"
mysql -u${DB_USERNAME} -p${DB_PASSWORD} -h${SERVER_IP} -e "select User, Host, Password from mysql.user;"
echo ''
echo "Showing databases with '${DB_USERNAME}@${SERVER_IP}':"
mysql -u${DB_USERNAME} -p${DB_PASSWORD} -h${SERVER_IP} -e "show databases;"

echo ''
echo ''
IP_HOST=$1

#DO A VALIDATION IP HERE.

if [ ! -z "$IP_HOST" ]; then
	echo "PUBLISHING your server to the world ('$IP_HOST')..."
	echo "IP HOST was setted. Changing IP in '${DB_NAME}.GameServerInfo'..."
	mysql -u${DB_USERNAME} -p${DB_PASSWORD} -h${SERVER_IP} -e "UPDATE ${DB_NAME}.GameServerInfo SET IP = '$1';"
	mysql -u${DB_USERNAME} -p${DB_PASSWORD} -h${SERVER_IP} -e "select * from ${DB_NAME}.GameServerInfo;"
else
	echo "PUBLISHING your server to the world wasn't successfully..."
	mysql -u${DB_USERNAME} -p${DB_PASSWORD} -h${SERVER_IP} -e "select * from ${DB_NAME}.GameServerInfo;"
	echo "IP HOST wasn't setted. You'll have to set this later ('${DB_NAME}.GameServerInfo') to publish the dk server to the world. Or just run '$0 xxx.xxx.xxx.xxx' again (replacing 'xxx.xxx.xxx.xxx' for your ip address). This will drop the current database and start over."
fi

echo ''
echo "FINISHING SETUP DARKEDEN SQL script."