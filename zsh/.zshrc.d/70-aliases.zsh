alias reload-zsh="source ~/.zshrc"
alias edit-zsh="nvim ~/.zshrc"

# macOS helpers
if [[ "$OSTYPE" == darwin* ]]; then
  alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"
fi

# eza
command -v eza >/dev/null && {
  alias ll='eza -al --group-directories-first'
  alias ls='eza -alF --color=always'
}

# bat
command -v bat >/dev/null && {
  export BAT_THEME="Solarized (light)"
  alias cat="bat"
}

# zoxide muscle memory
alias cd="z"
