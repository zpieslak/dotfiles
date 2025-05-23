# Aliases
alias cal='cal -m'
alias diff='diff --color=auto'
alias fgrep='fgrep --color=auto'
alias ghce='gh copilot explain'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias ls='ls -lh --color=auto'
alias zgrep='zgrep --color=auto'
alias vim='nvim'

if [[ -d "/opt/homebrew" ]]; then
  alias ctags="/opt/homebrew/bin/ctags"
  alias git="/opt/homebrew/bin/git"
  alias make="/opt/homebrew/opt/make/libexec/gnubin/make"
  alias mysql="/opt/homebrew/opt/mysql-client/bin/mysql"
  alias pip="/opt/homebrew/bin/pip3"
  alias python="/opt/homebrew/bin/python3"
  alias sed="/opt/homebrew/bin/gsed"
  alias vim="/opt/homebrew/bin/nvim"
fi
