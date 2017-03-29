FROM debian:stretch
MAINTAINER Dylan Baker <dylan@pnwbakers.com>

RUN apt-get update -qq && apt-get install -qq -y \
        gcc \
        clang \
        libc6-dev \
        freeglut3-dev \
        libgl1-mesa-dev \
        libegl1-mesa-dev \
        libgles1-mesa-dev \
        libgles2-mesa-dev \
        libgl1-mesa-dri \
        libgbm-dev \
        libglu1-mesa \
        libosmesa6-dev \
        libglew-dev \
        freeglut3-dev \
        locales \
        ninja-build \
        pkg-config \
        python \
        python3 \
        python3-pip

RUN locale-gen C.UTF-8 && /usr/sbin/update-locale LANG=C.UTF-8

ENV LANG C.UTF-8
ENV LANGUAGE C.UTF-8
ENV LC_ALL C.UTF-8

RUN pip3 install meson
