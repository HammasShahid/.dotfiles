# History in cache directory:
if [ ! -d $HOME/.cache/zsh/history ]; then
  mkdir -p $HOME/.cache/zsh/history;
elif [ ! -f $HOME/.cache/zsh/history/.zsh_history ]; then
  touch $HOME/.cache/zsh/history/.zsh_history
fi


HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history/.zsh_history

# zsh config directory
export ZDOTDIR="$HOME/.config/zsh"
