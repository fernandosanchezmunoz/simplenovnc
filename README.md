simplenovnc
============

This is a minimal image which will help you run X server with openbox on the docker container and access it from any recent browser without requiring you to do any configuration on the client side.

It has been modified to look for the $PORT0 variable and start the websocket in that port if defined. This is useful for deployment with Marathon and DC/OS.


## Use Cases

1. Provide system application accessible over the web easily.

2. Create a use & throw linux envinronment with GUI over cloud or any VPS /Server or  at your laptop. 

3. Multi-user environments that need isolation and privacy.

## How to use
```
docker run -td -p 6080:6080 fernandosanchez/simplenovnc
```

If deployed inside Marathon, the VNC servers will be automatically be available in the "Service Port".

For access within lan / localhost : visit http://localhost:6080 or http://privateip:6080
if you are running it in a local docker host or lan ip . click connect. You are good to go.


## This is a minimal Image

Applications menu is available right-clicking anywhere on the desktop.
This comes only with Chromium & Geany text editor installed.
apt-get is available to install additional software.

## Credits

* [NoVNC](http://kanaka.github.io/noVNC/)
* [Original docker-novnc project](https://github.com/paimpozhil/docker-novnc)
