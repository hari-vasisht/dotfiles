############################################################
# .zshrc — loader only
############################################################

# Load all config modules
for file in "$HOME/.zshrc.d/"*.zsh; do
  [[ -r "$file" ]] && source "$file"
done
