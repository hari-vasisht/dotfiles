##### FZF + fd + previews #####

# Use fd for fzf (if available)
if command -v fd >/dev/null 2>&1; then
  export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"
fi


# Inline preview logic (MUST be inline, not a function)
export FZF_CTRL_T_OPTS="--preview '
if [ -d {} ]; then
  eza --tree --color=always {} | head -200
else
  bat --style=numbers --color=always --line-range :500 {}
fi
'"

export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"


# Completion previews
_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}


# Advanced previews for specific commands
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)
      fzf --preview 'eza --tree --color=always {} | head -200' "$@"
      ;;
    export|unset)
      fzf --preview "eval 'echo \$'{}" "$@"
      ;;
    ssh)
      fzf --preview 'dig {}' "$@"
      ;;
    *)
      fzf --preview 'bat --style=numbers --color=always --line-range :500 {}' "$@"
      ;;
  esac
}
