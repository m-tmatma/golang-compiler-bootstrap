#!/bin/sh

ACTION=$1
docker run -v $(pwd):/home/root golang-compiler-bootstrap bash -c "which go; cd /home/root && ./build.sh $ACTION"

