# Include .bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
  . "$HOME/.bashrc"
fi

# Add home bin path
if [ -d "$HOME/bin" ]; then
  PATH="$HOME/bin:$PATH"
fi

# Git branch status
export PS1='\w$(__git_ps1 "[%s]")\$ '

# Set TERM to support 256 colors for tmux
export TERM=screen-256color

# Set Vim as default editor
export EDITOR=vim

# Add solarized dircolors
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

# Add alias to use colors
alias ls='ls -lh --color=auto'
alias grep='grep --color'
alias x='xdg-open'

# Run tmux
if [[ -z $TMUX ]]; then
  exec tmux
fi
