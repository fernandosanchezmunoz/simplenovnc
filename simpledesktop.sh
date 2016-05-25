docker run -it \
--rm \
--name=simpledesktop \
-p 5900:5900 \
-p 6080:6080 \
-p 80:80 \
-e USER=root \
simpledesktop
