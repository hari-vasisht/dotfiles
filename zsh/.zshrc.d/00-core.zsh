# Safety + sane defaults
setopt no_beep
setopt auto_cd
setopt correct
setopt extended_glob

# History
HISTFILE="$HOME/.zhistory"
HISTSIZE=999
SAVEHIST=1000

setopt share_history
setopt hist_ignore_dups
setopt hist_expire_dups_first
setopt hist_verify
