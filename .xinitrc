#!/bin/sh

# Make sure this is before the 'exec' command or it won't be sourced.
[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile

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

setxkbmap -model abnt2 -layout br -variant abnt2
#dbus-update-activation-environment --systemd DISPLAY
#eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
# Ensure dbus is either already running, or safely start it
if [[ -z "${DBUS_SESSION_BUS_ADDRESS}" ]];
then
    eval $(dbus-launch --sh-syntax --exit-with-session)
fi

# Make the keyring daemon ready to communicate with nm-applet
export $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg)

xset r rate 300 50
xsetroot -cursor_name left_ptr

#dpms: timeout sleep off                                                                                                                                                                                                                                        |~
# xset dpms 360 420 480

#twm &
#xclock -geometry 50x50-1+1 &
#xterm -geometry 80x50+494+51 &
#xterm -geometry 80x20+494-0 &
#exec xterm -geometry 80x66+0+0 -name login
# exec openbox-session
# exec startxfce4
# exec dbus-launch --sh-syntax --exit-with-session i3
exec bspwm
# exec startfluxbox
# exec dbus-launch --sh-syntax --exit-with-session awesome
# exec dwm
# exec /home/ferreira/.dwm/autostart
#exec /usr/bin/enlightenment_start
#exec cinnamon-session
#exec startlxqt
# exec i3
#exec dbus-launch --autolaunch=$(cat /var/lib/dbus/machine-id) i3
#export XDG_SESSION_TYPE=x11
#export GDK_BACKEND=x11
#exec gnome-session
#export XDG_CURRENT_DESKTOP=Budgie:GNOME
#exec budgie-desktop
#export DESKTOP_SESSION=plasma
#exec startplasma-x11
