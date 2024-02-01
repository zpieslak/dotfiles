# Run only if xinit does not start
if [ -z "$TMUX" ]; then
  # Attach to tmux session
  exec tmux
fi
