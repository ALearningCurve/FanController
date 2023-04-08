#!/bin/bash

# debug by default, unless passed `release` argument
profile="debug"
if [ $# -gt 0 ] && [ $1 == "release" ]; then
   profile="release"
fi

# Get directory path of this script
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
SHARED_LIB_DIR=$HOME/rover/firmware/lib

# Build project
# mount the following directories into the Docker container:
# - rover/firmware/src/project - contains this project (source code and libraries)
# - rover/firmware/lib - contains shared libraries like mbed cmake, rovercan, etc.
# then build the project with cmake
docker run \
    --mount=type=bind,source=$SCRIPT_DIR,destination=$SCRIPT_DIR \
    --mount=type=bind,source=$SHARED_LIB_DIR,destination=$SHARED_LIB_DIR \
    -w $SCRIPT_DIR \
    ghcr.io/armmbed/mbed-os-env:mbed-os-6-latest \
    bash -c "mkdir -p build/${profile} && cd build/${profile} && cmake -D CMAKE_BUILD_TYPE=${profile} ../.. && make -j$(nproc)"
