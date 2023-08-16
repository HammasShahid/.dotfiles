source $HOME/.config/zsh/exports.zsh
source $HOME/.config/zsh/aliases.zsh
source $HOME/.config/zsh/keybindings.zsh

# ZAP
ZAP_DIR=$HOME/.local/share/zap
if [ -f "$ZAP_DIR/zap.zsh" ]
then
  source "$ZAP_DIR/zap.zsh"
else
  /usr/bin/git clone https://github.com/zap-zsh/zap $ZAP_DIR
  source "$ZAP_DIR/zap.zsh"
fi

# completions
autoload -Uz compinit
zstyle ':completion:*' menu yes select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
zmodload zsh/complist
_comp_options+=(globdots)		# Include hidden files.
zle_highlight=('paste:none')
for dump in "${ZDOTDIR:-$HOME}/.zcompdump"(N.mh+24); do
  compinit
done
compinit -C


# man zshoptions for more options
setopt AUTO_CD 
setopt NOMATCH 
setopt MENU_COMPLETE 
setopt INTERACTIVE_COMMENTS
setopt APPEND_HISTORY
setopt EXTENDED_GLOB
setopt GLOB_DOTS

# node version manager (nvm)
source /usr/share/nvm/init-nvm.sh

# pywal
(cat ~/.cache/wal/sequences &)     # Import colorscheme from 'wal' asynchronously
source ~/.cache/wal/colors-tty.sh  # To add support for TTYs (Optional) 

# lfcd  (Change working dir in shell to last dir in lf on exit)
LFCD="${XDG_CONFIG_HOME:-$HOME/.config}/lf/lfcd.sh"
if [ -f "$LFCD" ]; then
   source "$LFCD"
fi

plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-autosuggestions"
plug "MichaelAquilina/zsh-auto-notify"
plug "zsh-users/zsh-syntax-highlighting"
# plug "zap-zsh/"
