#!/bin/sh

synclient TapButton1=1 &
synclient TapButton2=1 &
synclient TapButton3=1 &
synclient HorizTwoFingerScroll=1 &

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# echo "$DISPLAY" > /tmp/curr_display

sudo systemctl restart bluetooth.service
# systemctl --user restart greenclip.service
systemctl --user restart greenclip.service

xxkb &
pasystray &
slstatus &
# gromit-mpx --key delete &
redshift-gtk -l 56.315685:44.058699 -t 5500:3400 &
blueman-applet &

feh --randomize --bg-fill /home/ruut/wallpapers/anime/* &

setxkbmap -option grp:rctrl_toggle,grp_led:scroll,caps:none us,ru &

eval $(/usr/bin/gnome-keyring-daemon --start --components=secrets) &
# twm &
# xclock -geometry 50x50-1+1 &
# xterm -fa "Mono:size=12:antialias=false" -bg rgb:08/08/08 -fg white &
# xterm -fa "Mono:size=12:antialias=false" -bg rgb:08/08/08 -fg white &
# sleep 0.1
# terminator -x "watch_swaps.sh" &
# sleep 0.1
# terminator -x "watch_disks.sh" &
# sleep 0.1
# terminator &
terminator -l "tabbed" &

synclient TapButton1=1 &
synclient TapButton2=1 &
synclient TapButton3=1 &
synclient HorizTwoFingerScroll=1 &

dbus-launch /usr/bin/dwm
