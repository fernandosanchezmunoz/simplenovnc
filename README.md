chromoter
============

This is a minimal image running an X server with openbox on the docker container, and making it available through Google Chrome Remote Desktop.

## Use Cases

1. Provide system application accessible over the web easily.

2. Create a use & throw linux envinronment with GUI over cloud or any VPS /Server or  at your laptop. 

3. Multi-user environments that need isolation and privacy.

## How to use
```
docker run -td -p 6080:6080 fernandosanchez/chromoter
```

For access within lan / localhost : visit http://localhost:6080 or http://privateip:6080
if you are running it in a local docker host or lan ip . click connect. You are good to go.


## This is a minimal Image

Applications menu is available right-clicking anywhere on the desktop.
This comes only with Firefox & Geany text editor installed.
apt-get is available to install additional software.

