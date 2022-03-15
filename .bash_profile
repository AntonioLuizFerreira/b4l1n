# ~/.bash_profile
# sourced by bash when used as a login shell

# automatically run startx when logging in on tty1
#[[ ! $DISPLAY && $XDG_VTNR -eq 1 ]] && GDK_BACKEND=x11 exec startx -- vt1

#if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx; fi

#export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced

#if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
# exec startx
#fi

# bash -c "~/.local/bin/firefox-sync.sh cjyeb6td.default-release > /dev/null &"

#Startx Automatically
if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
. startx
logout
fi
#~/.local/bin/firefox-sync
