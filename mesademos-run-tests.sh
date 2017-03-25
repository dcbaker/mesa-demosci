#!/bin/bash

if [[ -n "$TRAVIS" ]]; then
  git clone https://github.com/dcbaker/mesa-demos /root/mesa-demos
  git checkout wip/meson
  cd /root/mesa-demos
fi

meson build "$@" || exit $?
ninja -C build || exit $?
