#!/bin/sh
# xinitrc of jltk

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap

# merge in defaults and keymaps
if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# turn energy features off
xset -dpms
# detect fonts
xset +fp /etc/fonts
xset fp rehash
# set german keyboard layout
setxkbmap -layout de
# start redshift
redshift -c $HOME/.config/redshift.conf &
# set background image
$HOME/.fehbg &
# start polybar
$HOME/.config/polybar/launch.sh &
# enable touchpad tap
synclient TapButton1=1
# start wm
exec herbstluftwm
