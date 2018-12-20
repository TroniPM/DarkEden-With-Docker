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
ENV USERNAME=elcastle \
    PASSWORD=elca110 \
    #DO NOT CHANGE DOWN HERE#
    IP_PLACEHOLDER=\@\@IP_CHANGE\@\@ \
	USERNAME_PLACEHOLDER=\@\@USERNAME_CHANGE\@\@ \
    PASSWORD_PLACEHOLDER=\@\@PASSWORD_CHANGE\@\@ \
    DK_PATH=/home/darkeden/ \
    CONF_PATH=/home/darkeden/vs/conf/

RUN export SERVER_IP="`ifconfig eth0 | grep inet | awk '{print $2}'`"

##########################################################################
################################          ################################
################################ INSTALLS ################################
################################          ################################
##########################################################################
RUN apt-get update \
    && apt-get -y install net-tools \
    && apt-get -y install iputils-ping \
    && apt-get -y install gcc \
    && apt-get -y install lua5.1 \
    && apt-get -y install libcppunit-1.14-0 \
    && apt-get -y install zlib1g \
    && apt-get -y install zlib1g-dev \
    && apt-get -y install gcc \
    && apt-get -y install zip unzip rar unrar \
    && apt-get -y install xz-utils \
    && apt-get -y install mysql-server-5.7 \
    && apt-get -y install mysql-client-5.7 \
    && apt-get -y install wget

##########################################################################
########################                       ###########################
######################## SENDING DATA TO IMAGE ###########################
########################                       ###########################
##########################################################################
COPY libs.tar.xz /home/libs.tar.xz
COPY DARKEDENSQL.tar.xz /home/DARKEDENSQL.tar.xz
COPY darkeden.tar.xz /home/darkeden.tar.xz

##########################################################################
####################                               #######################
#################### UNCOMPRESSING AND PERMISSIONS #######################
####################                               #######################
##########################################################################
RUN mkdir /home/libs && tar -xJf /home/libs.tar.xz -C /home/libs && dpkg -i /home/libs/libstdc++2.10-glibc2.2_2.95.4-27_i386.deb && rm -r /home/libs/
RUN mkdir ${DK_PATH} && tar -xJf /home/darkeden.tar.xz -C /home/ && cd ${DK_PATH} && chmod -R +x start stop vs/bin 
RUN tar -xJf /home/DARKEDENSQL.tar.xz -C ${DK_PATH}

##########################################################################
#########################                     ############################
######################### SETTING SERVER DATA ############################
#########################                     ############################
##########################################################################
RUN sed -i "s/${IP_PLACEHOLDER}/${SERVER_IP}/g"      ${CONF_PATH}loginserver.conf ${CONF_PATH}gameserver.conf ${CONF_PATH}sharedserver.conf ${DK_PATH}DARKEDEN.sql
RUN sed -i "s/${USERNAME_PLACEHOLDER}/${USERNAME}/g" ${CONF_PATH}loginserver.conf ${CONF_PATH}gameserver.conf ${CONF_PATH}sharedserver.conf ${DK_PATH}DARKEDEN.sql
RUN sed -i "s/${PASSWORD_PLACEHOLDER}/${PASSWORD}/g" ${CONF_PATH}loginserver.conf ${CONF_PATH}gameserver.conf ${CONF_PATH}sharedserver.conf ${DK_PATH}DARKEDEN.sql

##########################################################################
#########################                     ############################
######################### POPULATING DATABASE ############################
#########################                     ############################
##########################################################################
#TODO
#FAZER .SQL COMPATIVEL com a versão do mysql da máquina


#ACCESS MYSQL REMOTELY
EXPOSE 3306/tcp
EXPOSE 3306/udp













##########################################################################
##########################                   #############################
########################## PRINT SERVER's IP #############################
##########################                   #############################
##########################################################################
RUN echo "\r\n\r\nYour IP's server (LOCAL) is: ${SERVER_IP}. Change your client files...\r\n\r\n"