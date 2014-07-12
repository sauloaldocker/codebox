docker stop codebox
docker rm   codebox

SRC=$PWD/data
SRC=/home/saulo/auto/docker/lamp/html

docker run -d --name codebox -p 127.0.1.1:8003:8000 -v $SRC:/data jeromebaum/codebox run /data --open
