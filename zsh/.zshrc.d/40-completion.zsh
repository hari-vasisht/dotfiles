autoload -Uz compinit
compinit -d "${XDG_CACHE_HOME:-$HOME/.cache}/zcompdump"

# History search with arrows
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

