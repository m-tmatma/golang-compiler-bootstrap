#!/bin/sh -e


(                                         cd go1.4/src     && ./make.bash )
(export GOROOT_BOOTSTRAP=$(pwd)/go1.4  && cd go1.17/src    && ./make.bash )
(export GOROOT_BOOTSTRAP=$(pwd)/go1.17 && cd go1.20/src    && ./make.bash )
(export GOROOT_BOOTSTRAP=$(pwd)/go1.20 && cd go1.22/src    && ./make.bash )
(export GOROOT_BOOTSTRAP=$(pwd)/go1.22 && cd go1.24/src    && ./make.bash )
(export GOROOT_BOOTSTRAP=$(pwd)/go1.24 && cd go1.26/src    && ./make.bash )
(export GOROOT_BOOTSTRAP=$(pwd)/go1.26 && cd go-latest/src && ./make.bash )

