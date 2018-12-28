##########################################################################
########################                         #########################
######################## DOCKER FILE DARKEDEN V2 #########################
########################                         #########################
##########################################################################

# WRITTEN BY: TroniPM
# CONTRIBUTIONS: Softon, and no one yet.
# DATE: 19/12/2018

##########################################################################
##########################################################################
##########################################################################

	#COMPILING
	#sudo docker build -t darkeden .

	#runing
	#sudo docker run -it darkeden

	#delete all images
	#sudo docker system prune -a

##########################################################################
##################################      ##################################
################################## INIT ##################################
##################################      ##################################
##########################################################################
#it's really important image be i386/32 bits architecture
FROM i386/ubuntu:18.04

LABEL maintainer="paulomatew@gmail.com"

##########################################################################
################################           ###############################
################################ VARIABLES ###############################
################################           ###############################
##########################################################################
#INSERT '\' after every line, except the last one
ENV DB_USERNAME=dk \
    DB_PASSWORD=dk123 \
    DB_NAME=dkdocker \
    \
    ADMIN_USERNAME=admin \
    ADMIN_PASSWORD=123456 \
    \
    DK_SERVER_NAME=DKDocker \
    \
    IP_PLACEHOLDER=\@\@IP_CHANGE\@\@ \
    DB_USERNAME_PLACEHOLDER=\@\@DB_USERNAME_CHANGE\@\@ \
    DB_PASSWORD_PLACEHOLDER=\@\@DB_PASSWORD_CHANGE\@\@ \
    DB_NAME_PLACEHOLDER=\@\@DB_NAME_CHANGE\@\@ \
    \
    ADMIN_USERNAME_PLACEHOLDER=\@\@ADMIN_USERNAME_CHANGE\@\@ \
    ADMIN_PASSWORD_PLACEHOLDER=\@\@ADMIN_PASSWORD_CHANGE\@\@ \
    \
    DK_SERVER_NAME_PLACEHOLDER=\@\@DK_SERVER_NAME_CHANGE\@\@ \
    \
    DK_PATH=/home/darkeden/ \
    CONF_PATH=/home/darkeden/vs/conf/

EXPOSE 3306 9999 9998 9997 9996

##########################################################################
########################                       ###########################
######################## SENDING DATA TO IMAGE ###########################
########################                       ###########################
##########################################################################

COPY libs.tar.xz sql.tar.xz darkeden.tar.xz /home/

##########################################################################
################################          ################################
################################ INSTALLS ################################
################################          ################################
##########################################################################

RUN apt-get update && apt install -y --no-install-recommends \
    net-tools \
    iputils-ping \
    #gcc \
    #lua5.2 \
    xz-utils \
    mysql-server-5.7 \
    #libcppunit-1.14-0 \
    #zlib1g \
    #zlib1g-dev \
    #zip unzip rar unrar \
    #mysql-client-5.7 \
    nano \
    && rm -rf /var/lib/apt/lists/* 

##########################################################################
####################                               #######################
#################### UNCOMPRESSING AND PERMISSIONS #######################
####################                               #######################
##########################################################################
RUN \
       export SERVER_IP=`ifconfig eth0 | grep inet | awk '{print $2}'` \
    && export HOST_IP=`netstat -nr | grep -m1 eth0 | awk '{print $2}'` \
    #&& export HOSTNAME=`hostname` \
    && mkdir /home/libs && tar -xJf /home/libs.tar.xz -C /home/libs && dpkg -i /home/libs/libstdc++2.10-glibc2.2_2.95.4-27_i386.deb && rm -r /home/libs/ \
    && mkdir ${DK_PATH}   && tar -xJf /home/darkeden.tar.xz -C /home/ && cd ${DK_PATH} && chmod -R +x start stop vs/bin \
    && tar -xJf /home/sql.tar.xz -C ${DK_PATH} \
\
##########################################################################
#########################                     ############################
######################### SETTING SERVER DATA ############################
#########################                     ############################
##########################################################################
\
    && sed -i "s/${IP_PLACEHOLDER}/${SERVER_IP}/g"            ${CONF_PATH}loginserver.conf ${CONF_PATH}gameserver.conf ${CONF_PATH}sharedserver.conf ${DK_PATH}sql/inserts.sql ${DK_PATH}sql/creates.sql \
    && sed -i "s/${DB_USERNAME_PLACEHOLDER}/${DB_USERNAME}/g" ${CONF_PATH}loginserver.conf ${CONF_PATH}gameserver.conf ${CONF_PATH}sharedserver.conf ${DK_PATH}sql/inserts.sql ${DK_PATH}sql/creates.sql \
    && sed -i "s/${DB_PASSWORD_PLACEHOLDER}/${DB_PASSWORD}/g" ${CONF_PATH}loginserver.conf ${CONF_PATH}gameserver.conf ${CONF_PATH}sharedserver.conf ${DK_PATH}sql/inserts.sql ${DK_PATH}sql/creates.sql \
    && sed -i "s/${DB_NAME_PLACEHOLDER}/${DB_NAME}/g"         ${CONF_PATH}loginserver.conf ${CONF_PATH}gameserver.conf ${CONF_PATH}sharedserver.conf ${DK_PATH}sql/inserts.sql ${DK_PATH}sql/creates.sql \
\
    && sed -i "s/${ADMIN_USERNAME_PLACEHOLDER}/${ADMIN_USERNAME}/g" ${CONF_PATH}loginserver.conf ${CONF_PATH}gameserver.conf ${CONF_PATH}sharedserver.conf ${DK_PATH}sql/inserts.sql ${DK_PATH}sql/creates.sql \
    && sed -i "s/${ADMIN_PASSWORD_PLACEHOLDER}/${ADMIN_PASSWORD}/g" ${CONF_PATH}loginserver.conf ${CONF_PATH}gameserver.conf ${CONF_PATH}sharedserver.conf ${DK_PATH}sql/inserts.sql ${DK_PATH}sql/creates.sql \
    && sed -i "s/${DK_SERVER_NAME_PLACEHOLDER}/${DK_SERVER_NAME}/g" ${CONF_PATH}loginserver.conf ${CONF_PATH}gameserver.conf ${CONF_PATH}sharedserver.conf ${DK_PATH}sql/inserts.sql ${DK_PATH}sql/creates.sql \
    && sed -i "s/bind-address/#bind-address/g" /etc/mysql/mysql.conf.d/mysqld.cnf \
    && rm /home/darkeden.tar.xz /home/libs.tar.xz /home/sql.tar.xz 

##########################################################################
#########################                     ############################
######################### POPULATING DATABASE ############################
#########################                     ############################
##########################################################################
RUN \
       export SERVER_IP=`ifconfig eth0 | grep inet | awk '{print $2}'` \
    && export HOST_IP=`netstat -nr | grep -m1 eth0 | awk '{print $2}'` \
    && export HOSTNAME=`hostname` \
    && service mysql start \
    \
    && mysql -u root -e "CREATE DATABASE ${DB_NAME};" \
    \
    #ALOW 0000-00-00 00:00:00 as date default
    && mysql -u root -e "SET GLOBAL sql_mode = '';" \
    \
    #creating User > Host
    && mysql -u root -e "CREATE USER '${DB_USERNAME}'@'127.0.0.1'             IDENTIFIED BY '${DB_PASSWORD}';" \
    && mysql -u root -e "CREATE USER '${DB_USERNAME}'@'localhost'             IDENTIFIED BY '${DB_PASSWORD}';" \
    && mysql -u root -e "CREATE USER '${DB_USERNAME}'@'localhost.localdomain' IDENTIFIED BY '${DB_PASSWORD}';" \
    && mysql -u root -e "CREATE USER '${DB_USERNAME}'@'${SERVER_IP}'          IDENTIFIED BY '${DB_PASSWORD}';" \
    && mysql -u root -e "CREATE USER '${DB_USERNAME}'@'${HOST_IP}'            IDENTIFIED BY '${DB_PASSWORD}';" \
    && mysql -u root -e "CREATE USER '${DB_USERNAME}'@'${HOSTNAME}'            IDENTIFIED BY '${DB_PASSWORD}';" \
    \
    #granting permissions
    && mysql -u root -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USERNAME}'@'127.0.0.1';" \
    && mysql -u root -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USERNAME}'@'localhost';" \
    && mysql -u root -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USERNAME}'@'localhost.localdomain';" \
    && mysql -u root -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USERNAME}'@'${SERVER_IP}';" \
    && mysql -u root -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USERNAME}'@'${HOST_IP}';" \
    && mysql -u root -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USERNAME}'@'${HOSTNAME}';" \
    \
    #populating database
    && cat /home/darkeden/sql/creates.sql | mysql -u ${DB_USERNAME} -p${DB_PASSWORD} \
    && cat /home/darkeden/sql/inserts.sql | mysql -u ${DB_USERNAME} -p${DB_PASSWORD} \
\
##########################################################################
##########################                   #############################
########################## PRINT SERVER's IP #############################
##########################                   #############################
########################################################################## 
\
    && echo "\r\n\r\n\r\n\r\nYour DK !local! ip address is: ${SERVER_IP}.\r\nChange your dk client files...\r\n\r\n\r\n\r\n"

#open bash
CMD service mysql restart \
    && export SERVER_IP=`ifconfig eth0 | grep inet | awk '{print $2}'` \
    && export HOST_IP=`netstat -nr | grep -m1 eth0 | awk '{print $2}'` \
    && export HOSTNAME=`hostname` \
    && /bin/bash


#mysql> select * from GameServerInfo;
#+----------+----------+------------+---------+---------+---------+---------+------+
#| ServerID | Nickname | IP         | TCPPort | UDPPort | WorldID | GroupID | Stat |
#+----------+----------+------------+---------+---------+---------+---------+------+
#|        1 | game1    | 172.17.0.2 |    9998 |    9997 |       1 |       0 |    0 |
#+----------+----------+------------+---------+---------+---------+---------+------+
#mysql> select * from WorldDBInfo;
#+---------+------------+----------+------+----------+------+
#| WorldID | Host       | DB       | User | Password | Port |
#+---------+------------+----------+------+----------+------+
#|       0 | 172.17.0.2 | dkdocker | dk   | dk123    | 3306 |
#|       1 | 172.17.0.2 | dkdocker | dk   | dk123    | 3306 |
#+---------+------------+----------+------+----------+------+







