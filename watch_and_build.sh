#!/usr/bin/env bash

cmake src
watchman-make -p 'src/**' --run ./build.sh