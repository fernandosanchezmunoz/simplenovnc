simplenovnc
============

This is a minimal image which will help you run X server with openbox on the docker container and access it from ANY recent browser without requiring you to do any configuration on the client side.


## Use Cases

1. Provide system application accessible over the web easily. Lets say you want to demo a software which runs on your pc over internet without requiring the clients to install any softwares like Teamviwer,etc.

2. You can use this to create a simple use & throw linux envinronment with GUI over cloud or any VPS /Server or even at your laptop. 

Especially useful if you have to give access to your friends who come over for facebook/twittering at your PC. :)

## How to use
```
docker run -td -p 6080:6080 fernandosanchez/simplenovnc
```

For access within lan / localhost : visit http://localhost:6080 or http://privateip:6080
if you are running it in a local docker host or lan ip . click connect. You are good to go.


## This is a minimal Image

This comes only with Chromium & Geany text editor installed.
apt-get is available to install additional software.

## Credits

* [NoVNC](http://kanaka.github.io/noVNC/)
* [Original docker-novnc project](https://github.com/paimpozhil/docker-novnc)
* Based on https://github.com/paimpozhil/docker-novnc
