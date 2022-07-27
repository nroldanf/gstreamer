#!/bin/bash -e

docker run --rm -it --privileged \
    -e XDG_RUNTIME_DIR=/tmp \
    -e WAYLAND_DISPLAY=$WAYLAND_DISPLAY \
    -e HOME="$HOME" \
    -v $XDG_RUNTIME_DIR/$WAYLAND_DISPLAY:/tmp/$WAYLAND_DISPLAY \
    -v $(pwd):/workspace/code 
    docker.io/exaile/gst-python:$IMAGE_VERSION $ENTRYPOINT "$@"