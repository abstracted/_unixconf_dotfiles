#!/usr/bin/env bash
#         _       _ _
#   __  _(_)_ __ (_) |_ _ __ ___ 
#   \ \/ / | '_ \| | __| '__/ __|
#  _ >  <| | | | | | |_| | | (__ 
# (_)_/\_\_|_| |_|_|\__|_|  \___|
#

#█▓▒░  DEFAULT WM / DE
DEFAULT_WM='bspwm'
 
#█▓▒░  CONFIGURATION FILES
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap
usermodmap=$HOME/.Xmodmap
userresources=$HOME/.Xresources
userprofile=$HOME/.xprofile
 
#█▓▒░  MERGE DEFAULTS AND KEYMAPS
[ -f $sysresources ] && xrdb -merge $sysresources
[ -f $sysmodmap ] && xmodmap $sysmodmap
[ -f $usermodmap ] && xmodmap $usermodmap
[ -f $userresources ] && xrdb -merge $userresources
[ -f $userprofile ] && . $userprofile
 
#█▓▒░  START SOME NICE PROGRAMS
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

#█▓▒░  START DE / WM
exec $DEFAULT_WM

