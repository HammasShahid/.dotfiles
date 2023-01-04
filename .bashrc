#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ALIASES
#.bashrc file
alias bashrc='nvim ~/.bashrc'
#Dotfiles alias
alias dotfiles='/usr/bin/git --git-dir=/home/archer/.dotfiles/ --work-tree=/home/archer'
#SUCKLESS
suckless_dir='~/.local/share/suckless'
alias dwm.cd="cd $suckless_dir/dwm-6.4/"
alias slstatus.cd="cd $suckless_dir/slstatus/"
alias slock.cd="cd $suckless_dir/slock-1.5/"
alias dwm.conf="nvim $suckless_dir/dwm-6.4/config.h"
alias slstatus.conf="nvim $suckless_dir/slstatus/config.h"
alias slock.conf="nvim $suckless_dir/slock-1.5/config.h"
