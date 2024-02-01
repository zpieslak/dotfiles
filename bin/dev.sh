#!/bin/bash

# Setup
DIRECTORY=$1
NAME=$(basename $DIRECTORY)

# Create new window
VIM_PANE_ID=$(
  tmux new-window -c "$DIRECTORY" -d -n "$NAME" -PF "#{pane_id}"
)

# Split window
MAKE_PANE_ID=$(
  tmux split-window -c "$DIRECTORY" -d -h -t $VIM_PANE_ID -PF "#{pane_id}"
)

# Run vim
tmux send-keys -t "$VIM_PANE_ID" "vim" Enter

# Run make
tmux send-keys -t "$MAKE_PANE_ID" "make PANE_ID=$MAKE_PANE_ID -j -f GNUmakefile" Enter
