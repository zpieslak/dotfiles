#!/bin/bash

TMUX_MEM_CPU_LOAD_DIR="$(pwd)/submodules/tmux-mem-cpu-load"

cmake -B"$TMUX_MEM_CPU_LOAD_DIR" -H"$TMUX_MEM_CPU_LOAD_DIR"
make -C "$TMUX_MEM_CPU_LOAD_DIR"
ln -sf "$TMUX_MEM_CPU_LOAD_DIR/tmux-mem-cpu-load" ~/bin/tmux-mem-cpu-load
