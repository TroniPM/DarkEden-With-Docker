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

RUN apt-get update && apt install -y \
    net-tools \
    iputils-ping \
    gcc \
    lua5.1 \
    xz-utils \
    #libcppunit-1.14-0 \
    #zlib1g \
    #zlib1g-dev \
    #zip unzip rar unrar \
    #mysql-server-5.7 \
    #mysql-client-5.7 \
    #nano \\
\
##########################################################################
####################                               #######################
#################### UNCOMPRESSING AND PERMISSIONS #######################
####################                               #######################
##########################################################################
\
    && export SERVER_IP=`ifconfig eth0 | grep inet | awk '{print $2}'` \
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
    && sed -i "s/${IP_PLACEHOLDER}/${SERVER_IP}/g"      ${CONF_PATH}loginserver.conf ${CONF_PATH}gameserver.conf ${CONF_PATH}sharedserver.conf ${DK_PATH}sql/inserts.sql \
    && sed -i "s/${DB_USERNAME_PLACEHOLDER}/${DB_USERNAME}/g" ${CONF_PATH}loginserver.conf ${CONF_PATH}gameserver.conf ${CONF_PATH}sharedserver.conf ${DK_PATH}sql/inserts.sql \
    && sed -i "s/${DB_PASSWORD_PLACEHOLDER}/${DB_PASSWORD}/g" ${CONF_PATH}loginserver.conf ${CONF_PATH}gameserver.conf ${CONF_PATH}sharedserver.conf ${DK_PATH}sql/inserts.sql \
    && sed -i "s/${DB_NAME_PLACEHOLDER}/${DB_NAME}/g" ${CONF_PATH}loginserver.conf ${CONF_PATH}gameserver.conf ${CONF_PATH}sharedserver.conf ${DK_PATH}sql/inserts.sql \
    \
    && sed -i "s/${ADMIN_USERNAME_PLACEHOLDER}/${ADMIN_USERNAME}/g" ${DK_PATH}sql/inserts.sql \
    && sed -i "s/${ADMIN_PASSWORD_PLACEHOLDER}/${ADMIN_PASSWORD}/g" ${DK_PATH}sql/inserts.sql \
    && sed -i "s/${DK_SERVER_NAME_PLACEHOLDER}/${DK_SERVER_NAME}/g" ${DK_PATH}sql/inserts.sql \
    && rm /home/darkeden.tar.xz /home/libs.tar.xz /home/sql.tar.xz \
\
##########################################################################
##########################                   #############################
########################## PRINT SERVER's IP #############################
##########################                   #############################
########################################################################## 
\
    && echo "\r\n\r\n\r\n\r\nYour DK !local! ip address is: ${SERVER_IP}.\r\nChange your dk client files...\r\n\r\n\r\n\r\n"

##########################################################################
#########################                     ############################
######################### POPULATING DATABASE ############################
#########################                     ############################
##########################################################################
#ENTRYPOINT service mysql start
#FAZER .SQL COMPATIVEL com a versão do mysql da máquina
#PEGAR IP E POPULAR BANCO

#RUN THIS COMMANDS MANUALLY
# HOST IP >>>>>>>>>>>> netstat -nr | grep -m1 eth0 | awk '{print $2}'


# service mysql start
# SET GLOBAL sql_mode = ''; //ALOW 0000-00-00 00:00:00 as date default
# mysql -u dk -p 123 -e "CREATE USER 'dk'@'localhost' IDENTIFIED BY 'dk123';"
# mysql -u dk -p 123 -e "CREATE USER 'dk'@'172.17.0.1' IDENTIFIED BY 'dk123';"
# CREATE USER 'dk'@'localhost' IDENTIFIED BY 'dk123';
# CREATE USER 'dk'@'172.17.0.1' IDENTIFIED BY 'dk123';

#ACCESS MYSQL REMOTELY
EXPOSE 3306/tcp 3306/udp
