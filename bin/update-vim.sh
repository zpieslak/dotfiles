#!/bin/bash

VIM_DIR=~/.vim/pack/vendor/start

for PLUGIN_DIR in $VIM_DIR/*; do
  git -C $PLUGIN_DIR checkout .
  git -C $PLUGIN_DIR pull
done
