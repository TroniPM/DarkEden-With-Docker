<p align="center">
    <a href="#build" alt="build">
        <img src="https://img.shields.io/badge/build-passing-brightgreen.svg" /></a>
    <a href="#sponsors" alt="#docker">
        <img src="https://img.shields.io/badge/docker-blue.svg?logo=docker" /></a>
</p>

# DarkEden Docker
Set up your very own server using a current technology (vm is pretty dead boysssss) with a few steps. Everyone wants to make your own server, by gets stuck on VPS princing. Why is that? Too expansive. But Why [Docker]? Well, docker works like a VM, but without a Operating System behind. But why this matter? Well... You can execute a 'vm like' with less resources of memory, cpu, etc.

# NOT WORKING YET. [Why]? 
 - Error: When user do the login and goes to the character selection, GameServer process starts over.

# About Docker and the Project:
Read our [wiki].

# Build
### Dependencies
```sh
$ sudo apt install docker
```

### Runinng
Easy peasy lemon squeezy steps. Just run these commands below (```-d``` means "Run container in background and print container ID", ```-P``` means "Publish a container’s port(s) to the host", ```-e``` means "Set environment variables", ```-v``` means "Bind mount a volume". You can learn more about arguments [here].):
```sh
$ cd DarkEden-Docker/
sudo docker build -t dk .                                          #THIS WILL BUILD THE IMAGE LABELED AS 'dk'.
CONTAINER=`sudo docker run -d -P -e "MYSQL_ROOT_PASSWORD=123" -v "/home/pmateus/DarkEden-With-Docker/data/:/home/darkeden/vs/data" dk`  #THIS WILL RUN THE IMAGE CALLED 'dk'
CONTAINER=`sudo docker run -d -p 9999:9999/tcp -p 9999:9999/udp -p 9998:9998/tcp -p 9998:9998/udp -p 9997:9997/tcp -p 9997:9997/udp -p 9996:9996/tcp -p 9996:9996/udp -p 9977:9977/tcp -p 9977:9977/udp -p 9900:9900/tcp -p 9900:9900/udp -p 9800:9800/tcp -p 9800:9800/udp -p 5001:5001/tcp -p 5001:5001/udp -p 5000:5000/tcp -p 5000:5000/udp -p 3001:3001/tcp -p 3001:3001/udp -p 2999:2999/tcp -p 2999:2999/udp -p 1111:1111/tcp -p 1111:1111/udp -e "MYSQL_ROOT_PASSWORD=123" -v "/home/matt/dkworkspace/DarkEden-With-Docker/data/:/home/darkeden/vs/data" dk`  #THIS WILL RUN THE IMAGE CALLED 'dk'
sudo docker exec -it ${CONTAINER} /bin/bash                        #THIS WILL OPEN THE CONTAINER CALLED 'CONTAINER_ID'
```

Now what? Inside the docker image (REALLY lightwave), just setup and start your server ;]
```sh
cd / && ./setup.sh   #This is for darkeden sql scripts. Just run this ONCE.
cd / && ./start      #You know that, right? :)
```

### Customizable
Open file ```Dockerfile``` and change these variables as you wish. Importante 1: The local server's ip will be set automatically and printed on terminal after build is complete. Important 2: DO NOT remove ```\``` from variables end line:

```
...
DB_USERNAME=dk \                 #database username (maybe elcastle? hehehe)
DB_PASSWORD=dk123 \              #database password (what about 'elca110'? recommended change!)

ADMIN_USERNAME=admin \           #username default account (admin privileges) on dk server
ADMIN_PASSWORD=123456 \          #password default account (admin privileges) on dk server

DK_SERVER_NAME=DKDocker \        #dk server name showing on client (World and Subworld)
...
```


# Done so far on server
- Tables translated to english: ```AttrInfo.sql``` and ```GSStringPool.sql```
- One world only

# TO-DO on server
- Change bibles names to latin.
- Change NPCs names to latin.
- Balancing between races.
- Ability to disabled a race (one or two)

# Contributing
Bro, just open an issue explaining what you thinking, then we discuss about it, then you may send a pull request. For bugs, suggestions, requests and enhancements, create an issue. =]

### Thanks to:
 - Softon
 - Marcos Daniel
 - Lucas Lemos

   [Docker]: <https://www.docker.com/resources/what-container>
   [Gerry Fleming]: <https://www.nebulaworks.com/blog/2015/03/24/what-is-docker-a-simple-explanation/>
   [Why]: <https://github.com/TroniPM/DarkEden-With-Docker/issues>
   [here]: <https://docs.docker.com/engine/reference/commandline/run/>
   [wiki]: <https://github.com/TroniPM/DarkEden-With-Docker/wiki>
