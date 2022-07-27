#!/bin/bash -e

docker run --rm -it --privileged \
  -e DISPLAY="192.168.0.5" \
  -e HOME="$HOME" \
  -e USER_NAME="$USER" \
  -e USER_UID=$(id -u) \
  -e USER_GID=$(id -g) \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v $(pwd):/workspace/code \
  gstreamer bash