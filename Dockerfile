FROM i386/ubuntu:18.04

MAINTAINER Paulo Mateus <paulomatew@gmail.com>

########################
######## CHANGE ########
########################
ENV DB_USERNAME=dk \
    DB_PASSWORD=dk123 \
    ADMIN_USERNAME=admin \
    ADMIN_PASSWORD=123456 \
    DK_SERVER_NAME=DKDocker
########################
########################
########################

ENV PATH=/usr/local/mysql/bin:$PATH \
  MYSQLDATA=/usr/local/mysql/var \
  IP_PLACEHOLDER=@@IP_CHANGE@@ \
  DB_NAME_INFO=USERINFO \
  DB_NAME=DARKEDEN \
  DB_USERNAME_PLACEHOLDER=@@DB_USERNAME_CHANGE@@ \
  DB_PASSWORD_PLACEHOLDER=@@DB_PASSWORD_CHANGE@@ \
  DB_NAME_PLACEHOLDER=@@DB_NAME_CHANGE@@ \
  DB_NAME_PLACEHOLDER2=@@DB2_NAME_CHANGE@@ \
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

RUN dpkg -i /tmp/mysql_4.1.25-1_i386.deb && rm /tmp/mysql_4.1.25-1_i386.deb \
    && mkdir /home/libs && tar -xJf /home/libs.tar.xz -C /home/libs && dpkg -i /home/libs/libstdc++2.10-glibc2.2_2.95.4-27_i386.deb && rm -r /home/libs/
RUN groupadd -r mysql && useradd -r -g mysql mysql
RUN chown -R root /usr/local/mysql && chown -R mysql /usr/local/mysql/var && chgrp -R mysql /usr/local/mysql 
RUN chmod +x /docker-entrypoint.sh /setup.sh

###########################################################################################################
# DARKEDEN PART
###########################################################################################################
COPY sql/ ${SQL_PATH}

##########################################################################
####################                               #######################
#################### UNCOMPRESSING AND PERMISSIONS #######################
####################                               #######################
##########################################################################
RUN \
       export SERVER_IP=`ifconfig eth0 | grep inet | awk '{print $2}'` \
    && export HOST_IP=`netstat -nr | grep -m1 eth0 | awk '{print $2}'` \
    && export HOSTNAME=`hostname` \
    && mkdir ${DK_PATH} && tar -xJf /home/darkeden.tar.xz -C /home/ \
\
##########################################################################
#########################                     ############################
######################### SETTING SERVER DATA ############################
#########################                     ############################
##########################################################################
\
    && sed -i "s/${IP_PLACEHOLDER}/${SERVER_IP}/g"                    ${CONF_PATH}*.conf ${SQL_PATH}*.sql \
    && sed -i "s/${DB_USERNAME_PLACEHOLDER}/${DB_USERNAME}/g"         ${CONF_PATH}*.conf ${SQL_PATH}*.sql \
    && sed -i "s/${DB_PASSWORD_PLACEHOLDER}/${DB_PASSWORD}/g"         ${CONF_PATH}*.conf ${SQL_PATH}*.sql \
    && sed -i "s/${DB_NAME_PLACEHOLDER}/${DB_NAME}/g"                 ${CONF_PATH}*.conf ${SQL_PATH}*.sql \
\
    && sed -i "s/${DB_NAME_PLACEHOLDER2}/${DB_NAME_INFO}/g"           ${CONF_PATH}*.conf ${SQL_PATH}*.sql \
\
    && sed -i "s/${ADMIN_USERNAME_PLACEHOLDER}/${ADMIN_USERNAME}/g"   ${CONF_PATH}*.conf ${SQL_PATH}*.sql \
    && sed -i "s/${ADMIN_PASSWORD_PLACEHOLDER}/${ADMIN_PASSWORD}/g"   ${CONF_PATH}*.conf ${SQL_PATH}*.sql \
    && sed -i "s/${DK_SERVER_NAME_PLACEHOLDER}/${DK_SERVER_NAME}/g"   ${CONF_PATH}*.conf ${SQL_PATH}*.sql \
    && rm /home/darkeden.tar.xz /home/libs.tar.xz \
    && cp ${DK_PATH}start ${DK_PATH}stop / && chmod -R +x /start /stop && cd ${DK_PATH} && chmod -R +x start stop vs/bin \
    && echo "\r\n\r\n\r\n\r\nYour DK !local! ip address is: ${SERVER_IP}.\r\nChange your dk client files...\r\n\r\n\r\n\r\n"

EXPOSE 3306/tcp 3306/udp \
       9999/tcp 9999/udp \
       9998/tcp 9998/udp \
       9997/tcp 9997/udp \
       9996/tcp 9996/udp \
       9977/tcp 9977/udp \
       9900/tcp 9900/udp \
       9876/tcp 9876/udp \
       9800/tcp 9800/udp \
       5001/tcp 5001/udp \
       5000/tcp 5000/udp \
       3001/tcp 3001/udp \
       2999/tcp 2999/udp \
       1111/tcp 1111/udp 

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["mysqld_safe"]
