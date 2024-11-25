#!/bin/bash
# script for fancy blur lock screen using ffmpeg and i3lock
# keybind in wm
# https://www.reddit.com/r/unixporn/comments/4yj29e/i3lock_simple_blur_script/

TMPBG=/tmp/screen.png
LOCK=$HOME/.config/images/lock.png
RES=1366x768
 
ffmpeg -f x11grab -video_size $RES -y -i $DISPLAY -i $LOCK -filter_complex "boxblur=2:1,overlay=(main_w-overlay_w)/2:(main_h-overlay_h)/2" -vframes 1 $TMPBG
i3lock -i $TMPBG
