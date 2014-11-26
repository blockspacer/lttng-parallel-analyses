#!/bin/bash

pushd ..
git submodule init
git submodule update
popd

pushd babeltrace
./bootstrap
./configure
make
popd

pushd tigerbeetle
./bootstrap.sh
scons
popd
