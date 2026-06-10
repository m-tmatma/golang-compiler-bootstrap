#!/bin/sh -e


echo "::group::Build go1.4"
(                                         cd go1.4/src     && ./make.bash )
echo "::endgroup::"

echo "::group::Build go1.17"
(export GOROOT_BOOTSTRAP=$(pwd)/go1.4  && cd go1.17/src    && ./make.bash )
echo "::endgroup::"

echo "::group::Build go1.20"
(export GOROOT_BOOTSTRAP=$(pwd)/go1.17 && cd go1.20/src    && ./make.bash )
echo "::endgroup::"

echo "::group::Build go1.22"
(export GOROOT_BOOTSTRAP=$(pwd)/go1.20 && cd go1.22/src    && ./make.bash )
echo "::endgroup::"

echo "::group::Build go1.24"
(export GOROOT_BOOTSTRAP=$(pwd)/go1.22 && cd go1.24/src    && ./make.bash )
echo "::endgroup::"

echo "::group::Build go1.26"
(export GOROOT_BOOTSTRAP=$(pwd)/go1.24 && cd go1.26/src    && ./make.bash )
echo "::endgroup::"

echo "::group::Build go-latest"
(export GOROOT_BOOTSTRAP=$(pwd)/go1.26 && cd go-latest/src && ./make.bash )
echo "::endgroup::"

