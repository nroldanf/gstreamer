#!/bin/bash -e

docker run --rm -it --privileged \
  -e DISPLAY="$DISPLAY" \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v $(pwd):/workspace/code \
  gstreamer bash