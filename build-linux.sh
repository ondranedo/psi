#!/bin/bash

build=build/cmake
btype=Debug

cmake -B $build -DCMAKE_BUILD_TYPE=${btype}
cmake --build $build
cmake --install $build
