# Powerlevel10k instant prompt (MUST be early)
P10K_CACHE="${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
[[ -r "$P10K_CACHE" ]] && source "$P10K_CACHE"

# Load p10k theme if installed
if [[ -n "$BREW_PREFIX" ]]; then
  P10K_THEME="$BREW_PREFIX/share/powerlevel10k/powerlevel10k.zsh-theme"
  [[ -f "$P10K_THEME" ]] && source "$P10K_THEME"
fi

# User config
[[ -f "$HOME/.p10k.zsh" ]] && source "$HOME/.p10k.zsh"
