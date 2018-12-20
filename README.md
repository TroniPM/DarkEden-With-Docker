<p align="center">
    <a href="#build" alt="build">
        <img src="https://img.shields.io/badge/build-passing-brightgreen.svg" /></a>
    <a href="#sponsors" alt="#docker">
        <img src="https://img.shields.io/badge/docker-blue.svg?logo=docker" /></a>
</p>

# DarkEden Docker
Set up your very own server using a current technology (vm is pretty dead boysssss) with a few steps. Everyone wants to make your own server, by gets stuck on VPS princing. Why is that? Too expansive. But Why [Docker]? Well, docker works like a VM, but without a Operating System behind. But why this matter? Well... You can execute a 'vm like' with less resources of memory, cpu, etc.

# NOT WORKING YET. Why?
 - Convert database dump (DARKEDEN.SQL) from mysql4.0.20-standard to mysql5.7
 - Populate mysql with file (DARKEDEN.SQL)

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

### Changing username, password and ip
Open file ```Dockerfile``` and change variables 'from' > 'to' (important: DO NOT REMOVE ```\``` FROM END LINE). The local server's ip will be set automatically end sent to terminal after build:
FROM
```
...
USERNAME=elcastle \
PASSWORD=elca110 \
...
```
TO
```
...
USERNAME=YOUR_USERNAME \
PASSWORD=YOUR_PASSWORD \
...
```

# Done so far
- Tables translated to english: ```AttrInfo.sql``` and ```GSStringPool.sql```
- One world only

# Work to-do: 
- INSTALL MYSQL-CLIENT and MYSQL-SERVER
- Clean the database to remaing with ```only required data```
- Create an account ADMIN with 3 characters (slayer, vampire and ouster)
  - Create variable to set username/password for admin default account

# Contributing
Bro, just send me a pull request explaining what you did. =]


   [Docker]: <https://www.docker.com/resources/what-container>
