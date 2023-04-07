#!/usr/bin/env bash

# Start some nice programs
[[ -d /etc/X11/xinit/xinitrc.d ]] && {
  for file in /etc/X11/xinit/xinitrc.d/?*.sh; do
    [[ -x $file ]] && . $file
  done
  unset file
}

# Screen Resolution
xrandr --newmode "1680x1050_60.00"  146.25  1680 1784 1960 2240  1050 1053 1059 1089 -hsync +vsync &&
xrandr --addmode VGA1 "1680x1050_60.00" &&
xrandr --output VGA1 --mode "1680x1050_60.00" &

# Wallpaper manager
nitrogen --restore &

/usr/bin/pipewire &
/usr/bin/pipewire-pulse &
/usr/bin/pipewire-media-session &

#compositor
#picom --config ~/.config/picom/picom.conf &
picom -f &

# Notification Daemon
dunst &

# KDEConnect Daemon
/usr/lib/kdeconnectd &

# Status Bar
slstatus &

# Systray Apps
nm-applet &
kdeconnect-indicator &

# Loop
while true; do
    dwm >/dev/null 2>&1
done

# Start WM
# exec qtile start
exec dwm
