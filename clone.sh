#!/bin/sh -e

git clone -b release-branch.go1.4  https://github.com/golang/go go1.4
git clone -b release-branch.go1.17 https://github.com/golang/go go1.17
git clone -b release-branch.go1.20 https://github.com/golang/go go1.20
git clone -b release-branch.go1.22 https://github.com/golang/go go1.22
git clone -b release-branch.go1.24 https://github.com/golang/go go1.24
git clone -b release-branch.go1.26 https://github.com/golang/go go1.26
git clone                          https://github.com/golang/go go-latest

