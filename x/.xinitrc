#!/usr/bin/env bash

# Start some nice programs
[[ -d /etc/X11/xinit/xinitrc.d ]] && {
  for file in /etc/X11/xinit/xinitrc.d/?*.sh; do
    [[ -x $file ]] && . $file
  done
  unset file
}

# Screen Resolution
# run `gtf/cvt <width> <height> <refresh-rate>` and copy everyting after "Modeline"
xrandr --newmode "1680x1050-60.00"  146.25  1680 1784 1960 2240  1050 1053 1059 1089 -hsync +vsync &&
xrandr --addmode VGA-1 "1680x1050-60.00" &&
xrandr --output VGA-1 --mode "1680x1050-60.00" &

# Wallpaper manager
nitrogen --restore &

/usr/bin/pipewire &
/usr/bin/pipewire-pulse &
/usr/bin/wireplumber &

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

# Hotkey Daemon
sxhkd &

# Loop
while true; do
    dwm >/dev/null 2>&1
done

# Start WM
# exec qtile start
exec dwm
