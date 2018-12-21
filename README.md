<p align="center">
    <a href="#build" alt="build">
        <img src="https://img.shields.io/badge/build-passing-brightgreen.svg" /></a>
    <a href="#sponsors" alt="#docker">
        <img src="https://img.shields.io/badge/docker-blue.svg?logo=docker" /></a>
</p>

# DarkEden Docker
Set up your very own server using a current technology (vm is pretty dead boysssss) with a few steps. Everyone wants to make your own server, by gets stuck on VPS princing. Why is that? Too expansive. But Why [Docker]? Well, docker works like a VM, but without a Operating System behind. But why this matter? Well... You can execute a 'vm like' with less resources of memory, cpu, etc.

# NOT WORKING YET. [Why]? 
 - Populate mysql with files: ```inserts.sql``` and ```creates.sql```

# About Docker
Docker is based on the idea of that you can package your code with dependencies into a deployable unit called a container. For a visual explanation, think of the shipping containers used for intermodal shipping. You put your package (code and dependencies) in the container, ship it using a boat or train (laptop or cloud) and when it arrives at its destination it works (runs) just like it did when it was shipped. Docker creates an isolated Linux process using software fences. The other part of the puzzle are images. Images are an artifact, essentially a snapshot of the contents a container is meant to run. Low overhead: Unlike virtual machine hypervisors, Docker is lightweight and very fast, containers are small and boot instantly. [Gerry Fleming], 2015.

# Build
### Dependencies
```sh
$ sudo apt install docker
```

### Runinng
Easy peasy lemon squeezy. Just run these commands:
```sh
$ cd DarkEden-Docker/
$ sudo docker build -t darkeden . #THIS WILL BUILD THE IMAGE LABELED AS 'darkeden'. !!DO NOT REMOVE THE DOT (.) AFTER!!
$ sudo docker run -it darkeden    #THIS WILL RUN AND OPEN THE IMAGE CALLED 'darkeden'
```

Now what? Inside the docker image (REALLY lightwave), just start your server ;]
```sh
$ cd /home/darkeden/ && ./start
```

### Changing username and password
Open file ```Dockerfile``` and change variables ```USERNAME``` and ```PASSWORD```. The local server's ip will be set automatically and printed on terminal after build. Important: DO NOT REMOVE ```\``` FROM END LINE:


FROM
```
...
DB_USERNAME=dk \
DB_PASSWORD=dk123 \
DB_NAME=dkdocker \
ADMIN_USERNAME=admin \
ADMIN_PASSWORD=123456 \
DK_SERVER_NAME=DKDocker \
...
```
TO
```
...
DB_USERNAME=YOUR_USERNAME \
DB_PASSWORD=YOUR_PASSWORD \
DB_NAME=YOUR_DATABASE_NAME \
ADMIN_USERNAME=YOUR_DKSERVER_ADMIN_USERNAME \
ADMIN_PASSWORD=YOUR_DKSERVER_ADMIN_PASSWORD \
DK_SERVER_NAME=YOUR_DKSERVER_WORLD_NAME \
...
```

# Done so far
- Tables translated to english: ```AttrInfo.sql``` and ```GSStringPool.sql```
- One world only

# Contributing
Bro, just send me a pull request explaining what you did. =]


   [Docker]: <https://www.docker.com/resources/what-container>
   [Gerry Fleming]: <https://www.nebulaworks.com/blog/2015/03/24/what-is-docker-a-simple-explanation/>
   [Why]: <https://github.com/TroniPM/DarkEden-With-Docker/issues>
