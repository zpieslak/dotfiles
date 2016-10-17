# Include .bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
  . "$HOME/.bashrc"
fi

# Include .bash_profile.local if it exists
if [ -f "$HOME/.bash_profile.local" ]; then
  . "$HOME/.bash_profile.local"
fi

# Add home bin path
if [ -d "$HOME/bin" ]; then
  PATH="$HOME/bin:$PATH"
fi

# Git branch status
export PS1='\w$(__git_ps1 "[%s]")\$ '

# Set TERM for tmux 24-bit colors support
export TERM=xterm-256color

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
