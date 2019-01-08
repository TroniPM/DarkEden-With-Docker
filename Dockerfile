FROM i386/ubuntu:18.04

MAINTAINER Paulo Mateus <paulomatew@gmail.com>

########################
######## CHANGE ########
########################
ENV DB_USERNAME=dk \
    DB_PASSWORD=dk123 \
    DB_NAME=dkdocker \
    ADMIN_USERNAME=admin \
    ADMIN_PASSWORD=123456 \
    DK_SERVER_NAME=DKDocker
########################
########################
########################

ENV PATH=/usr/local/mysql/bin:$PATH \
  MYSQLDATA=/usr/local/mysql/var \
  IP_PLACEHOLDER=@@IP_CHANGE@@ \
  DB_USERNAME_PLACEHOLDER=@@DB_USERNAME_CHANGE@@ \
  DB_PASSWORD_PLACEHOLDER=@@DB_PASSWORD_CHANGE@@ \
  DB_NAME_PLACEHOLDER=@@DB_NAME_CHANGE@@ \
  ADMIN_USERNAME_PLACEHOLDER=@@ADMIN_USERNAME_CHANGE@@ \
  ADMIN_PASSWORD_PLACEHOLDER=@@ADMIN_PASSWORD_CHANGE@@ \
  DK_SERVER_NAME_PLACEHOLDER=@@DK_SERVER_NAME_CHANGE@@ \
  DK_PATH=/home/darkeden/ \
  CONF_PATH=/home/darkeden/vs/conf/ \
  SQL_PATH=/home/sql/ 

VOLUME /usr/local/mysql/var

RUN apt-get update && apt-get install -q -y --no-install-recommends \
    nano \
    locate \
    xz-utils \
    net-tools \
    iputils-ping \
    psmisc

#COPY --from=0 /usr/local/src/mysql-4.1.25/mysql_4.1.25-1_i386.deb /tmp/mysql_4.1.25-1_i386.deb
COPY mysql_4.1.25-1_i386.deb /tmp/mysql_4.1.25-1_i386.deb
COPY my.cnf /etc/my.cnf
COPY docker-entrypoint.sh setup.sh /
COPY libs.tar.xz darkeden.tar.xz /home/
COPY sql/ ${SQL_PATH}

RUN dpkg -i /tmp/mysql_4.1.25-1_i386.deb && rm /tmp/mysql_4.1.25-1_i386.deb
RUN groupadd -r mysql && useradd -r -g mysql mysql
RUN chown -R root /usr/local/mysql && chown -R mysql /usr/local/mysql/var && chgrp -R mysql /usr/local/mysql 
RUN chmod +x /docker-entrypoint.sh /setup.sh

###########################################################################################################
# DARKEDEN PART
###########################################################################################################

##########################################################################
####################                               #######################
#################### UNCOMPRESSING AND PERMISSIONS #######################
####################                               #######################
##########################################################################
RUN \
       export SERVER_IP=`ifconfig eth0 | grep inet | awk '{print $2}'` \
    && export HOST_IP=`netstat -nr | grep -m1 eth0 | awk '{print $2}'` \
    && export HOSTNAME=`hostname` \
    && mkdir /home/libs && tar -xJf /home/libs.tar.xz -C /home/libs && dpkg -i /home/libs/libstdc++2.10-glibc2.2_2.95.4-27_i386.deb && rm -r /home/libs/ \
    && mkdir ${DK_PATH} && tar -xJf /home/darkeden.tar.xz -C /home/ && cd ${DK_PATH} && chmod -R +x start stop vs/bin \
\
##########################################################################
#########################                     ############################
######################### SETTING SERVER DATA ############################
#########################                     ############################
##########################################################################
\
    && sed -i "s/${IP_PLACEHOLDER}/${SERVER_IP}/g"                    ${CONF_PATH}loginserver.conf ${CONF_PATH}gameserver.conf ${CONF_PATH}sharedserver.conf ${SQL_PATH}inserts.sql ${SQL_PATH}creates.sql \
    && sed -i "s/${DB_USERNAME_PLACEHOLDER}/${DB_USERNAME}/g"         ${CONF_PATH}loginserver.conf ${CONF_PATH}gameserver.conf ${CONF_PATH}sharedserver.conf ${SQL_PATH}inserts.sql ${SQL_PATH}creates.sql \
    && sed -i "s/${DB_PASSWORD_PLACEHOLDER}/${DB_PASSWORD}/g"         ${CONF_PATH}loginserver.conf ${CONF_PATH}gameserver.conf ${CONF_PATH}sharedserver.conf ${SQL_PATH}inserts.sql ${SQL_PATH}creates.sql \
    && sed -i "s/${DB_NAME_PLACEHOLDER}/${DB_NAME}/g"                 ${CONF_PATH}loginserver.conf ${CONF_PATH}gameserver.conf ${CONF_PATH}sharedserver.conf ${SQL_PATH}inserts.sql ${SQL_PATH}creates.sql \
\
    && sed -i "s/${ADMIN_USERNAME_PLACEHOLDER}/${ADMIN_USERNAME}/g" ${CONF_PATH}loginserver.conf ${CONF_PATH}gameserver.conf ${CONF_PATH}sharedserver.conf ${SQL_PATH}inserts.sql ${SQL_PATH}creates.sql \
    && sed -i "s/${ADMIN_PASSWORD_PLACEHOLDER}/${ADMIN_PASSWORD}/g" ${CONF_PATH}loginserver.conf ${CONF_PATH}gameserver.conf ${CONF_PATH}sharedserver.conf ${SQL_PATH}inserts.sql ${SQL_PATH}creates.sql \
    && sed -i "s/${DK_SERVER_NAME_PLACEHOLDER}/${DK_SERVER_NAME}/g" ${CONF_PATH}loginserver.conf ${CONF_PATH}gameserver.conf ${CONF_PATH}sharedserver.conf ${SQL_PATH}inserts.sql ${SQL_PATH}creates.sql \
    && rm /home/darkeden.tar.xz /home/libs.tar.xz \
    && echo "\r\n\r\n\r\n\r\nYour DK !local! ip address is: ${SERVER_IP}.\r\nChange your dk client files...\r\n\r\n\r\n\r\n"

EXPOSE 3306 9999 9998 9997 9996

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["mysqld_safe"]
