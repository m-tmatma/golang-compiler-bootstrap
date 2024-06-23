#!/bin/sh -e

ACTION=$1
case $ACTION in
    build1.4)
        (                                         cd go1.4/src     && ./make.bash )
        ;;
    build1.17)
        (export GOROOT_BOOTSTRAP=$(pwd)/go1.4  && cd go1.17/src    && ./make.bash )
        ;;
    build1.20)
        (export GOROOT_BOOTSTRAP=$(pwd)/go1.17 && cd go1.20/src    && ./make.bash )
        ;;
    build1.22)
        (export GOROOT_BOOTSTRAP=$(pwd)/go1.20 && cd go1.22/src    && ./make.bash )
        ;;
    build-master)
        (export GOROOT_BOOTSTRAP=$(pwd)/go1.20 && cd go-master/src && ./make.bash )
        ;;
    version)
        ./version.sh
        ;;
    *)
        echo "Invalid action: $ACTION"
        exit 1
        ;;
esac

