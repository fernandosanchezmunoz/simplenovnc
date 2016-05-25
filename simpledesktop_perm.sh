docker run -it \
--name=simpledesktop \
-v "/Users/fer/Docker/ubuntu-desktop/var":"/var" \
-v "/Users/fer/Docker/ubuntu-desktop/etc":"/etc" \
-v "/Users/fer/Docker/ubuntu-desktop/opt":"/opt" \
-v "/Users/fer/Docker/ubuntu-desktop/home":"/home" \
-v "/Users/fer/Docker/ubuntu-desktop/root":"/root" \
-p 5900:5900 \
-p 6080:6080 \
-p 80:80 \
-e USER=root \
simpledesktop
