#!/bin/bash

if [[ -n "$TRAVIS" ]]; then
  git clone https://github.com/dcbaker/mesa-demos /root/mesa-demos
  cd /root/mesa-demos
  git checkout meson
fi

meson build "$@" || exit $?
ninja -C build || exit $?
