<p align="center">
    <a href="#build" alt="build">
        <img src="https://img.shields.io/badge/build-passing-brightgreen.svg" /></a>
    <a href="#sponsors" alt="#docker">
        <img src="https://img.shields.io/badge/docker-blue.svg?logo=docker" /></a>
</p>

# DarkEden Docker
Set up your very own server using a current technology (vm is pretty dead boysssss) with a few steps. Everyone wants to make your own server, by gets stuck on VPS princing. Why is that? Too expansive. But Why [Docker]? Well, docker works like a VM, but without a Operating System behind. But why this matter? Well... You can execute a 'vm like' with less resources of memory, cpu, etc.

# NOT WORKING YET. [Why]? 
 - Error: ClientManager Initialization.

# About Docker
Docker is based on the idea of that you can package your code with dependencies into a deployable unit called a container. For a visual explanation, think of the shipping containers used for intermodal shipping. You put your package (code and dependencies) in the container, ship it using a boat or train (laptop or cloud) and when it arrives at its destination it works (runs) just like it did when it was shipped. Docker creates an isolated Linux process using software fences. The other part of the puzzle are images. Images are an artifact, essentially a snapshot of the contents a container is meant to run. Low overhead: Unlike virtual machine hypervisors, Docker is lightweight and very fast, containers are small and boot instantly. [Gerry Fleming], 2015.

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
$ cd / && ./setup.sh                 #This is for darkeden sql scripts. Just run this ONCE.
$ cd /home/darkeden/ && ./start      #You know that, right? :)
```

### Customizable
Open file ```Dockerfile``` and change these variables as you wish. Importante 1: The local server's ip will be set automatically and printed on terminal after build is complete. Important 2: DO NOT remove ```\``` from variables end line:

```
...
DB_USERNAME=dk \                 #database username (maybe elcastle? hehehe)
DB_PASSWORD=dk123 \              #database password (what about 'elca110'? recommended change!)
DB_NAME=dkdocker \               #database name (v2 'original' files was 'DARKEDEN')

ADMIN_USERNAME=admin \           #username default account (admin privileges) on dk server
ADMIN_PASSWORD=123456 \          #password default account (admin privileges) on dk server

DK_SERVER_NAME=DKDocker \        #dk server name showing on client (World and Subworld)
...
```


# Done so far on server
- Tables translated to english: ```AttrInfo.sql``` and ```GSStringPool.sql```
- One world only
- TO-DO: Change bibles name to latin.


# Contributing
Bro, just open an issue explaining what you thinking, then we discuss about it, then you may send a pull request. For bugs, suggestions, requests and enhancements, create an issue. =]

### Big thanks to:
 - Marcos Daniel de Souza
 - Lucas Lemos

   [Docker]: <https://www.docker.com/resources/what-container>
   [Gerry Fleming]: <https://www.nebulaworks.com/blog/2015/03/24/what-is-docker-a-simple-explanation/>
   [Why]: <https://github.com/TroniPM/DarkEden-With-Docker/issues>
   [here]: <https://docs.docker.com/engine/reference/commandline/run/>
