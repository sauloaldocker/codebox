docker stop codebox
docker rm   codebox

SRC=$HOME/data/docker
SRC_HTML_LAMP=$SRC/lamp/html
SRC_HTML_NODE=$SRC/node
#SRC=/home/saulo/data/lamp/html

docker run -d --name codebox -p 127.0.1.1:8003:8000 -v $SRC_HTML_LAMP:/data/lamp -v $SRC_HTML_NODE:/data/node jeromebaum/codebox run /data --open
