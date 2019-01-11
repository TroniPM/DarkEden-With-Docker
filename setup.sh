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

echo "Starting: Creating ${DB_NAME} tables" && cat /home/sql/creates.sql | mysql -u${DB_USERNAME} -p${DB_PASSWORD} && echo 'done...'
echo "Starting: Creating  ${DB_NAME_INFO} tables" && cat /home/sql/creates_info.sql | mysql -u${DB_USERNAME} -p${DB_PASSWORD} && echo 'done...'
echo "Starting: Populating ${DB_NAME} tables" && cat /home/sql/inserts.sql | mysql -u${DB_USERNAME} -p${DB_PASSWORD} && echo 'done...'

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

#mysql -u${DB_USERNAME} -p${DB_PASSWORD} -h${SERVER_IP} -e "INSERT INTO ${DB_NAME}.Player VALUES ('${ADMIN_USERNAME}',password('${ADMIN_PASSWORD}'),'docker is a beauty',NULL,'',NULL,NULL,NULL,NULL,NULL,'docker@docker.com',NULL,NULL,'PRIVATE',1,1,'LOGOFF','ALLOW',0,0,0,0,0,'','192.168.1.10',2,NULL,0,0,'2002-07-15 00:00:00',0,0,'2009-01-21','2009-01-21 13:28:53',0,'',2,'2002-07-15 00:00:00','Y');"
#mysql -u${DB_USERNAME} -p${DB_PASSWORD} -h${SERVER_IP} -e "INSERT INTO ${DB_NAME}.GameServerGroupInfo VALUES (0,1,'${DK_SERVER_NAME} 1',1);"
#mysql -u${DB_USERNAME} -p${DB_PASSWORD} -h${SERVER_IP} -e "INSERT INTO ${DB_NAME}.GameServerGroupInfo VALUES (1,1,'${DK_SERVER_NAME} 2',0);"
#mysql -u${DB_USERNAME} -p${DB_PASSWORD} -h${SERVER_IP} -e "INSERT INTO ${DB_NAME}.GameServerInfo VALUES (1,'game1','${SERVER_IP}',9998,9997,1,0,0);"
#mysql -u${DB_USERNAME} -p${DB_PASSWORD} -h${SERVER_IP} -e "INSERT INTO ${DB_NAME}.GameServerInfo VALUES (1,'game2','${SERVER_IP}',9998,9997,1,1,0);"
#mysql -u${DB_USERNAME} -p${DB_PASSWORD} -h${SERVER_IP} -e "INSERT INTO ${DB_NAME}.WorldDBInfo VALUES (0,'${SERVER_IP}','${DB_NAME}','${DB_USERNAME}','${DB_PASSWORD}',3306);"
#mysql -u${DB_USERNAME} -p${DB_PASSWORD} -h${SERVER_IP} -e "INSERT INTO ${DB_NAME}.WorldDBInfo VALUES (1,'${SERVER_IP}','${DB_NAME}','${DB_USERNAME}','${DB_PASSWORD}',3306);"
#mysql -u${DB_USERNAME} -p${DB_PASSWORD} -h${SERVER_IP} -e "INSERT INTO ${DB_NAME}.WorldInfo VALUES (1,'${DK_SERVER_NAME}',0);"

#mysql -u${DB_USERNAME} -p${DB_PASSWORD} -h${SERVER_IP} -e "UPDATE ${DB_NAME}.WorldDBInfo SET User='${DB_USERNAME}', Password='${DB_PASSWORD}', Host='${SERVER_IP}';"
#mysql -u${DB_USERNAME} -p${DB_PASSWORD} -h${SERVER_IP} -e "UPDATE ${DB_NAME}.WorldInfo SET Name='${DK_SERVER_NAME}';"
#mysql -u${DB_USERNAME} -p${DB_PASSWORD} -h${SERVER_IP} -e "UPDATE ${DB_NAME}.GameServerInfo SET IP='${SERVER_IP}';"
#mysql -u${DB_USERNAME} -p${DB_PASSWORD} -h${SERVER_IP} -e "UPDATE ${DB_NAME}.GameServerGroupInfo SET GroupName='${SERVER_IP}';"

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