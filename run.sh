docker stop codebox
docker rm   codebox

SRC=$HOME/data/
SRC_HTML=$SRC/lamp/html
#SRC=/home/saulo/data/lamp/html

docker run -d --name codebox -p 127.0.1.1:8003:8000 -v $SRC_HTML:/data jeromebaum/codebox run /data --open
