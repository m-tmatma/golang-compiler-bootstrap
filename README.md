# Instructions to bootstrap golang compiler


[Installing Go from source](https://go.dev/doc/install/source) の [Install Go compiler binaries for bootstrap](https://go.dev/doc/install/source#go14)

> Go <= 1.4: a C toolchain.
> 1.5 <= Go <= 1.19: a Go 1.4 compiler.
> 1.20 <= Go <= 1.21: a Go 1.17 compiler.
> 1.22 <= Go <= 1.23: a Go 1.20 compiler.
> Going forward, Go version 1.N will require a Go 1.M compiler, where M is N-2 rounded down to an even number. Example: Go 1.24 and 1.25 require Go 1.22.

## Instructions (処理の流れ)

1. Install C compiler and git (c コンパイラおよび git をインストールする。)
2. Get all necessary golang sources (必要なバージョンのすべての go のコンパイラのソースコードを入手する。)
3. Build go 1.4 with C compiler (go 1.4 を C コンパイラでビルドする。)
4. Build go 1.17 with go 1.4   (go 1.17 を go 1.4 コンパイラでビルドする。)
5. Build go 1.20 with go 1.17 (go 1.20 を go 1.17 コンパイラでビルドする。)
6. Build go 1.22 with go 1.20 (go 1.22 を go 1.20 コンパイラでビルドする。)
7. Build go master with go 1.20 (go master を go 1.20 コンパイラでビルドする。)

## Preparation (準備)

```
sudo apt install -y build-essential git
```

Note: `prepare.sh`

## Get golang sources

```
git clone -b release-branch.go1.4  https://github.com/golang/go go1.4
git clone -b release-branch.go1.17 https://github.com/golang/go go1.17
git clone -b release-branch.go1.20 https://github.com/golang/go go1.20
git clone -b release-branch.go1.22 https://github.com/golang/go go1.22
git clone                          https://github.com/golang/go go-latest
```

Note: `clone.sh`

## Build

```
(                                         cd go1.4/src     && ./make.bash )
(export GOROOT_BOOTSTRAP=$(pwd)/go1.4  && cd go1.17/src    && ./make.bash )
(export GOROOT_BOOTSTRAP=$(pwd)/go1.17 && cd go1.20/src    && ./make.bash )
(export GOROOT_BOOTSTRAP=$(pwd)/go1.20 && cd go1.22/src    && ./make.bash )
(export GOROOT_BOOTSTRAP=$(pwd)/go1.20 && cd go-latest/src && ./make.bash )
```

Note: `build.sh`

## Check

```
./go1.4/bin/go version
./go1.17/bin/go version
./go1.20/bin/go version
./go1.22/bin/go version
./go-latest/bin/go version
```

Note: `version.sh`


```
./go1.17/bin/go tool dist list
./go1.20/bin/go tool dist list
./go1.22/bin/go tool dist list
./go-latest/bin/go tool dist list
```

Note: `dist-list.sh`


