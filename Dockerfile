FROM docker.io/ubuntu:22.10
RUN true \
  && export DEBIAN_FRONTEND=noninteractive \
  && apt-get update \
  && apt-get install -y --no-install-recommends \
    libpulse0 \
    pulseaudio \
    python3-mutagen \
    python3-gi \
    python3-gi-cairo \
    python3-dbus \
    gir1.2-gtk-3.0 \
    gir1.2-gstreamer-1.0 \
    gir1.2-gst-plugins-base-1.0 \
    gstreamer1.0-plugins-base \
    gstreamer1.0-plugins-good \
    gstreamer1.0-plugins-ugly \
    gstreamer1.0-pulseaudio \
    gstreamer1.0-plugins-bad \
  && rm -rf /var/lib/apt/lists/* \
  && echo enable-shm=no >> /etc/pulse/client.conf

WORKDIR /workspace/code
CMD /bin/bash