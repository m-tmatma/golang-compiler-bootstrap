#!/bin/sh -xe

./go1.17/bin/go tool dist list
./go1.20/bin/go tool dist list
./go1.22/bin/go tool dist list
./go-master/bin/go tool dist list

