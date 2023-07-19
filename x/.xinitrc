#!/usr/bin/env bash

# Start some nice programs
[[ -d /etc/X11/xinit/xinitrc.d ]] && {
  for file in /etc/X11/xinit/xinitrc.d/?*.sh; do
    [[ -x $file ]] && . $file
  done
  unset file
}

# Screen Resolution
resset &

# startup apps
autostart &

# Loop
while true; do
    dwm >/dev/null 2>&1
done

# Start WM
# exec qtile start
exec dwm
