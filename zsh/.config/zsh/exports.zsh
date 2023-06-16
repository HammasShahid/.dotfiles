# nvm
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# default apps
export EDITOR="nvim"
export TERMINAL="kitty"
export BROWSER="firefox"
export EXPLORER="pcmanfm"

# Adds ~/.local/bin and subfolders to $PATH
export PATH="$PATH:${$(find ~/.local/bin -maxdepth 1 -type d -printf %p:)%%:}"

#clean up home folder
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

# Add to path
# export PATH="$HOME/.local/bin/:$PATH"
