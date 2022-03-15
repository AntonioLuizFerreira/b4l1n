# Adds `~/.local/bin` to $PATH

# Default programs:
#export EDITOR="nvim"
#export TERMINAL="st"
export BROWSER="firefox"
# export SUDO_ASKPASS="$HOME/.local/bin/dmenupass"
export SUDO_ASKPASS="/usr/lib/ssh/x11-ssh-askpass"

export PATH="$PATH:~/.local/bin"
# export PATH="$PATH:${$(find ~/.local/bin -type d -printf %p:)%%:}"

# ~/ Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
# export XDG_RUNTIME_DIR="/tmp/runtime-ferreira"
export XDG_RUNTIME_DIR=/run/user/$UID

# Other program settings:
export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"
export QT_QPA_PLATFORMTHEME="qt5ct"	# Have QT use gtk2 theme.

source ~/.local/share/icons-in-terminal/icons_bash.sh

# Input prompt of fuzzy searcher
export FONTPREVIEW_SEARCH_PROMPT="❯ "

# Size of the font preview window
export FONTPREVIEW_SIZE=532x365

# The position where the font preview window should be displayed
export FONTPREVIEW_POSITION="+0+0"

# Font size
export FONTPREVIEW_FONT_SIZE=38

# Background color of the font preview window
export FONTPREVIEW_BG_COLOR="#ffffff"

# Foreground color of the font preview window
export FONTPREVIEW_FG_COLOR="#000000"

# Preview text that should be displayed in the font preview window
export FONTPREVIEW_PREVIEW_TEXT="ABCDEFGHIJKLM\nNOPQRSTUVWXYZ\nabcdefghijklm\nnopqrstuvwxyz\n1234567890\n!@$\%(){}[]"

# This is the list for lf icons:
export LF_ICONS="\
tw=:\
st=:\
ow=:\
dt=:\
di=:\
fi=:\
ln=:\
or=:\
ex=:\
*.c=:\
*.cc=:\
*.clj=:\
*.coffee=:\
*.cpp=:\
*.css=:\
*.d=:\
*.dart=:\
*.erl=:\
*.exs=:\
*.fs=:\
*.go=:\
*.h=:\
*.hh=:\
*.hpp=:\
*.hs=:\
*.html=:\
*.java=:\
*.jl=:\
*.js=:\
*.json=:\
*.lua=:\
*.md=:\
*.php=:\
*.pl=:\
*.pro=:\
*.py=:\
*.rb=:\
*.rs=:\
*.scala=:\
*.ts=:\
*.vim=:\
*.cmd=:\
*.ps1=:\
*.sh=:\
*.bash=:\
*.zsh=:\
*.fish=:\
*.tar=:\
*.tgz=:\
*.arc=:\
*.arj=:\
*.taz=:\
*.lha=:\
*.lz4=:\
*.lzh=:\
*.lzma=:\
*.tlz=:\
*.txz=:\
*.tzo=:\
*.t7z=:\
*.zip=:\
*.z=:\
*.dz=:\
*.gz=:\
*.lrz=:\
*.lz=:\
*.lzo=:\
*.xz=:\
*.zst=:\
*.tzst=:\
*.bz2=:\
*.bz=:\
*.tbz=:\
*.tbz2=:\
*.tz=:\
*.deb=:\
*.rpm=:\
*.jar=:\
*.war=:\
*.ear=:\
*.sar=:\
*.rar=:\
*.alz=:\
*.ace=:\
*.zoo=:\
*.cpio=:\
*.7z=:\
*.rz=:\
*.cab=:\
*.wim=:\
*.swm=:\
*.dwm=:\
*.esd=:\
*.jpg=:\
*.jpeg=:\
*.mjpg=:\
*.mjpeg=:\
*.gif=:\
*.bmp=:\
*.pbm=:\
*.pgm=:\
*.ppm=:\
*.tga=:\
*.xbm=:\
*.xpm=:\
*.tif=:\
*.tiff=:\
*.png=:\
*.svg=:\
*.svgz=:\
*.mng=:\
*.pcx=:\
*.mov=:\
*.mpg=:\
*.mpeg=:\
*.m2v=:\
*.mkv=:\
*.webm=:\
*.ogm=:\
*.mp4=:\
*.m4v=:\
*.mp4v=:\
*.vob=:\
*.qt=:\
*.nuv=:\
*.wmv=:\
*.asf=:\
*.rm=:\
*.rmvb=:\
*.flc=:\
*.avi=:\
*.fli=:\
*.flv=:\
*.gl=:\
*.dl=:\
*.xcf=:\
*.xwd=:\
*.yuv=:\
*.cgm=:\
*.emf=:\
*.ogv=:\
*.ogx=:\
*.aac=:\
*.au=:\
*.flac=:\
*.m4a=:\
*.mid=:\
*.midi=:\
*.mka=:\
*.mp3=:\
*.mpc=:\
*.ogg=:\
*.ra=:\
*.wav=:\
*.oga=:\
*.opus=:\
*.spx=:\
*.xspf=:\
*.pdf=:\
*.nix=:\
"

setxkbmap -model abnt2 -layout br -variant abnt2
setxkbmap -option terminate:ctrl_alt_bksp

export LIBVA_DRIVER_NAME="vdpau"
export VDPAU_DRIVER="nvidia"
#export WINEPREFIX=$HOME/.config/wine/
#export WINEARCH=win32
#export EDITOR="$(if [[ -n $DISPLAY ]]; then echo 'geany'; else echo 'nano'; fi)"
#export VISUAL=vim
export VISUAL=ewrap
export EDITOR="$VISUAL"
#export EDITOR=vim
#export QT_QPA_PLATFORMTHEME=qt5ct
export HISTCONTROL=ignoredups
export HISTCONTROL=erasedups
#export MOZ_WEBRENDER=1
#export XDEB_OPT_DEPS=true
#export XDEB_OPT_SYNC=true
#export XDEB_OPT_WARN_CONFLICT=true
#export XDEB_OPT_FIX_CONFLICT=true

case ${TERM} in

  xterm*|rxvt*|Eterm|alacritty|aterm|kterm|gnome*)
     PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'

    ;;
  screen*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
esac

#export LESS_TERMCAP_mb=$'\E[01;31m'
#export LESS_TERMCAP_md=$'\E[01;33m'
#export LESS_TERMCAP_me=$'\E[0m'
#export LESS_TERMCAP_se=$'\E[0m' # end the info box
#export LESS_TERMCAP_so=$'\E[01;42;30m' # begin the info box
#export LESS_TERMCAP_ue=$'\E[0m'
#export LESS_TERMCAP_us=$'\E[01;36m'

export LESS=-R
export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"
export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"
export LESS_TERMCAP_me="$(printf '%b' '[0m')"
export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"
export LESS_TERMCAP_se="$(printf '%b' '[0m')"
export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"
export LESS_TERMCAP_ue="$(printf '%b' '[0m')"
export LESSOPEN="| /usr/bin/highlight -O ansi %s 2>/dev/null"

#eval "$(jump shell bash)"

eval "$(zoxide init bash)"

#[[ -s /etc/profile.d/autojump.sh ]] && source /etc/profile.d/autojump.sh

export NNN_OPTS="Hcerx"
export LC_COLLATE="C"
export NNN_BMS="m:/run/user/$UID/gvfs;u:$HOME/Documents;p:$HOME/Pictures;e:$HOME/Retropie;r:$HOME/RPG;i:$HOME/.config/i3;k:$HOME/.config/kitty;d:$HOME/Downloads/"
export NNN_COLORS="2136"
export NNN_FIFO=/tmp/nnn.fifo
export NNN_PLUG='j:autojump;c:fzcd;f:finder;o:fzopen;m:mtpmount;t:nmount;i:imgview;p:preview-tui;x:!chmod +x $nnn;s:!smplayer $nnn;e:-!sudo -E nvim $nnn*'
export SPLIT='v'
# export NNN_FCOLORS='030304020006060801050501'

# alias nnn='nnn -P p'
#alias ls='nnn -e'

# BLK="0B" CHR="0B" DIR="04" EXE="06" REG="00" HARDLINK="06" SYMLINK="06" MISSING="00" ORPHAN="09" FIFO="06" SOCK="0B" OTHER="06"
# export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER"

BLK="04" CHR="04" DIR="04" EXE="00" REG="00" HARDLINK="00" SYMLINK="06" MISSING="00" ORPHAN="01" FIFO="0F" SOCK="0F" OTHER="02"
export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER"

if [ -f /usr/share/nnn/quitcd/quitcd.bash_zsh ]; then
    source /usr/share/nnn/quitcd/quitcd.bash_zsh
fi

[ -n "$NNNLVL" ] && PS1="N$NNNLVL $PS1"

nnn_cd()
{
    if ! [ -z "$NNN_PIPE" ]; then
        printf "%s\0" "0c${PWD}" > "${NNN_PIPE}" !&
    fi
}

# trap nnn_cd EXIT

# nnn-preview ()
# {
#     # Block nesting of nnn in subshells
#     if [ -n "$NNNLVL" ] && [ "${NNNLVL:-0}" -ge 1 ]; then
#         echo "nnn is already running"
#         return
#     fi
#
#     # The default behaviour is to cd on quit (nnn checks if NNN_TMPFILE is set)
#     # To cd on quit only on ^G, remove the "export" as in:
#         # NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
#     # NOTE: NNN_TMPFILE is fixed, should not be modified
#     export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
#
#     # This will create a fifo where all nnn selections will be written to
#     NNN_FIFO="$(mktemp --suffix=-nnn -u)"
#     export NNN_FIFO
#     (umask 077; mkfifo "$NNN_FIFO")
#
#     # Preview command
#     preview_cmd="/home/ferreira/.local/bin/preview_cmd.sh"
#
#     # Use `tmux` split as preview
#     if [ -e "${TMUX%%,*}" ]; then
#         tmux split-window -e "NNN_FIFO=$NNN_FIFO" -dh "$preview_cmd"
#
#     # Use `xterm` as a preview window
#     elif (which xterm &> /dev/null); then
#         xterm -e "$preview_cmd" &
#
#     # Unable to find a program to use as a preview window
#     else
#         echo "unable to open preview, please install tmux or xterm"
#     fi
#
#     nnn "$@"
#
#     rm -f "$NNN_FIFO"
# }


# enable bash completion in interactive shells
if [ -f /etc/bash_completion ]; then
. /etc/bash_completion
fi

# If ~/.inputrc doesn't exist yet: First include the original /etc/inputrc
# so it won't get overriden
# if [ ! -a ~/.inputrc ]; then echo '$include /etc/inputrc' > ~/.inputrc; fi

# Add shell-option to ~/.inputrc to enable case-insensitive tab completion
# echo 'set completion-ignore-case On' >> ~/.inputrc

#complete -cf sudo

# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Bash won't get SIGWINCH if another process is in the foreground.
# Enable checkwinsize so that bash will check the terminal size when
# it regains control.  #65623
# http://cnswww.cns.cwru.edu/~chet/bash/FAQ (E11)
shopt -s checkwinsize

# Disable completion when the input buffer is empty.  i.e. Hitting tab
# and waiting a long time for bash to expand all of $PATH.
shopt -s no_empty_cmd_completion

# Enable history appending instead of overwriting when exiting.  #139609
shopt -s histappend

for sh in /etc/bash/bashrc.d/* ; do
	[[ -r ${sh} ]] && source "${sh}"
done

# Try to keep environment pollution down, EPA loves us.
unset use_color sh

# Côres Gerais:
#export LS_OPTIONS='--color=auto'
#eval `dircolors`
#alias ls='ls $LS_OPTIONS'
#alias ll='ls $LS_OPTIONS -l'
#alias l='ls $LS_OPTIONS -lA'

#alias vim='vim -c Minimap'

# alias nvim='lvim'

#powerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
#. /usr/share/powerline/bindings/bash/powerline.sh

# Arch Linux
alias update-grub='sudo mkinitcpio -P && sudo grub-mkconfig -o /boot/grub/grub.cfg'
#alias updref='sudo mkinitcpio -P && sudo refind-install'
alias upgrd='yay -Syu && sudo wget https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts -O /etc/hosts'

# Debian Update GRUB
#alias upgrub='sudo update-initramfs -u && sudo grub-mkconfig -o /boot/grub/grub.cfg'

#Void Linux
#alias upgrd='sudo xbps-install -Suv && sudo wget -O /etc/hosts https://someonewhocares.org/hosts/zero/hosts && cd /mnt/storage/void-packages && git pull origin master'
#alias autormv='sudo vkpurge rm all && sudo xbps-remove -yO && sudo xbps-remove -yo'
#alias ytdwn='youtube-dl -f "bestaudio/best" -ciw -o "%(title)s.%(ext)s" -v --extract-audio --audio-quality 0 --audio-format mp3'
#alias ytplay='cd /mnt/storage/youtube-music/ && git pull origin master && yarn start'

 #
 ## Info: http://gnu2all.blogspot.com/2011/10/estilos-de-bash-prompts.html
 #
 ## Meu bash_prompt padrão.
 #

 #
 ## Opções para o bash_history, aliases e autocomplete.
 #
 ## Info: http://dan-scientia.blogspot.com/2010/05/usando-o-historico-do-bash-com.html
 #

 #
 # caso queiram descomentem as 3 linhas abaixo, crie o arquivo ~/.bash_aliases e ponham.
 # os aliases nele, essas linhas estão comentadas pois os coloquei diretamente no ~/.bashrc
 #
 # if [ -f ~/.bash_aliases ]; then
  # . ~/.bash_aliases
 # fi

 # if [ -x /usr/bin/dircolors ]; then
 # test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
# alias ls='ls --color=auto'
 # alias dir='dir --color=auto'
 # alias vdir='vdir --color=auto'

 # alias grep='grep --color=auto'
 # alias fgrep='fgrep --color=auto'
 # alias egrep='egrep --color=auto'
 # fi

 #
 ## Gestão de Debian, Ubuntu e derivados ( INÍCIO ).
 #

#alias add-apt-repository='sudo add-apt-repository.sh'
#alias apt-get='apt-fast'

# debdelta.
#alias debdelta='sudo debdelta-upgrade'

 # atualização completa do sistema.
#alias upgrd='sudo apt update && sudo apt dist-upgrade && sudo apt full-upgrade'

 # descarta a instalação de pacotes recomendados ou sugeridos.
 #alias aptinst='sudo apt --no-install-recommends install'


 # instalar pacote com o DPKG.
 #alias debinstall='sudo dpkg -i'
 #alias debinstall-force='sudo dpkg -i --force-overwrite'

 # remover pacote com o APT.
# alias rmv='sudo apt-get remove'

 # remover pacote e configurações.
 #alias aptprg='sudo apt-get remove --purge'

 # remover pacote com o DPKG.
 #alias dpkgrmv='sudo dpkg -r'

 # remover pacotes órfãos.
 #alias autoremove='sudo apt-get autoremove'

 # remover pacote órfãos e configurações.
 #alias aptautprg='sudo apt-get autoremove --purge'

 # remover pacotes antigos do cache.
#alias autormvclean='sudo apt autoremove && sudo apt autoclean && sudo apt clean'

 # procurar pacote.
 #alias aptsearch='apt-cache search'

 # mostrar pacote.
 #alias aptshow='apt-cache show'

 # reparar APT/DPKG.
 #alias aptrepair='sudo apt-get -f install'
 #alias dpkgrepair='sudo dpkg --configure -a'

 # reconfigurar pacote.
 #alias dpkgreconf='sudo dpkg--reconfigure'

 # preligar binários. ( requer: prelink )
 #alias preligar='sudo prelink --all'

 # atualizar índices com o updatedb. ( requer: mlocate ou slocate )
 #alias index='sudo updatedb'


 #
 ## Gestão de Debian, Ubuntu e derivados ( FIM ).
 #

 #
 ## Cores para manpages.
 #
 alias man="TERMINFO=~/.terminfo TERM=mostlike LESS=C PAGER=less man"

 #
 ## Zipar arquivos ou diretórios.
 #
 function zipf() { zip -r "$1".zip "$1" ; }


# Côres Básicas do Prompt Inicial Simples, se quiser usar, descomente
# PS1="\[\e[0;39m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[0;94m\]\$ \[\e[m\]\[\e[0;32m\]"

# tambem tem este:
# PS1="\[\e[36;1m\]\u@\[\e[32;1m\]\H> \[\e[0m\]"

#PS1="\[\e[01;37m\][\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[01;33m\]\u\[\e[0m\]\[\e[01;31m\]@\[\e[0m\]\[\e[01;34m\]\h\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[01;37m\]]\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[01;36m\]-\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[01;37m\][\[\e[0m\]\[    \e[00;37m\] \[\e[0m\]\[\e[01;32m\]\d\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[01;36m\]*\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[01;32m\]\A\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[01;37m\]]\[\e[0m\]\[\e[00;37m\]\n\[\e[0m\]\[\e[01;37m\][\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[01;33m\]\w\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[01;32m\]\\$\[\e[0m\]\[\e[01;37m\]]\[\e[0m\]\[\e[00;37m\] \[\e[0m\]"

PS1='\[\e[01;31m\]┌─[\[\e[01;36m\u\e[01;31m\]]─[\[\e[01;32m\]${HOSTNAME%%.*}\[\e[01;31m\]]─[\[\033[1;33m\]\w\[\033[1;31m\]]-\[\e[01;33m\]$\[\e[01;31m\]\n\[\e[01;31m\]└──\[\e[01;92m\]>>\[\e[0m\]'

# E Este, que estou usando:

#PS1="\[\e[36;1m\]\u@\[\e[32;1m\]\H> \[\e[4;33m\]>>>>>[\[\e[1;36m\] \d \[\e[1;31m\]\t \[\e[1;37m\] ] \n\[\e[0;91m\] >>>>> [ \[\e[1;34m\]DIRETORIO E: \[\e[1;32m\]\w \[\e[1;37m\]]\[\e[1;35m\]---> \[\e[0;37m\]  "

# Outro Prompt, ainda  mais sofisticado, côres diferentes etc...
# detalhes para editar veja:
# https://wiki.archlinux.org/index.php/Color_Bash_Prompt

#PS1="\n\[&#92;033[1;33m\]\342\224\214($(if [[ ${EUID} == 0 ]]; then echo '\[&#92;033[01;31m\]\h'; else echo '\[&#92;033[01;31m\]\u@\h'; fi)\[&#92;033[1;33m\])\342\224\200(\$(if [[ \$? == 0 ]]; then echo \"\[&#92;033[01;34m\]\342\234\223\"; else echo \"\[&#92;033[01;31m\]\342\234\227\"; fi)\[&#92;033[1;33m\])\342\224\200(\[&#92;033[1;32m\]\@ \d\[&#92;033[1;33m\])\[&#92;033[1;33m\]\n\342\224\224\342\224\200(\[&#92;033[1;34m\]\w\[&#92;033[1;33m\])\342\224\200(\[&#92;033[1;34m\]\$(ls -1 | wc -l | sed 's: ::g') files, \$(ls -lah | grep -m 1 total | sed 's/total //')b\[&#92;033[1;33m\])\342\224\200> \[&#92;033[0m\]"

if [ -f /usr/bin/neofetch ]; then neofetch; fi

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
#(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
#cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
#source ~/.cache/wal/colors-tty.sh
alias cp='/usr/local/bin/cpg -g'
alias mv='/usr/local/bin/mvg -g'

# =============================================================================
#
# Utility functions for zoxide.
#

# pwd based on the value of _ZO_RESOLVE_SYMLINKS.
function __zoxide_pwd() {
    \builtin pwd -L
}

# cd + custom logic based on the value of _ZO_ECHO.
function __zoxide_cd() {
    # shellcheck disable=SC2164
    \builtin cd "$@"
}

# =============================================================================
#
# Hook configuration for zoxide.
#

# Hook to add new entries to the database.
function __zoxide_hook() {
    \builtin local -r retval="$?"
    \builtin local -r pwd_tmp="$(__zoxide_pwd)"
    if [ -z "${__zoxide_oldpwd}" ]; then
        __zoxide_oldpwd="${pwd_tmp}"
    elif [ "${__zoxide_oldpwd}" != "${pwd_tmp}" ]; then
        __zoxide_oldpwd="${pwd_tmp}"
        zoxide add -- "${__zoxide_oldpwd}"
    fi
    return "${retval}"
}

# Initialize hook.
if [ -z "${PROMPT_COMMAND}" ]; then
    PROMPT_COMMAND='__zoxide_hook'
elif [[ ${PROMPT_COMMAND} != *'__zoxide_hook'* ]]; then
    PROMPT_COMMAND="__zoxide_hook;${PROMPT_COMMAND#;}"
fi

# =============================================================================
#
# When using zoxide with --no-aliases, alias these internal functions as
# desired.
#

# Jump to a directory using only keywords.
function __zoxide_z() {
    if [ "$#" -eq 0 ]; then
        __zoxide_cd ~
    elif [ "$#" -eq 1 ] && [ "$1" = '-' ]; then
        __zoxide_cd "${OLDPWD}"
    elif [ "$#" -eq 1 ] && [ -d "$1" ]; then
        __zoxide_cd "$1"
    else
        \builtin local result
        result="$(zoxide query --exclude "$(__zoxide_pwd)" -- "$@")" && __zoxide_cd "${result}"
    fi
}

# Jump to a directory using interactive search.
function __zoxide_zi() {
    \builtin local result
    result="$(zoxide query -i -- "$@")" && __zoxide_cd "${result}"
}

# =============================================================================
#
# Convenient aliases for zoxide. Disable these using --no-aliases.
#

# Remove definitions.
function __zoxide_unset() {
    \builtin unset -f "$@" &>/dev/null
    \builtin unset -v "$@" &>/dev/null
    \builtin unalias "$@" &>/dev/null || \builtin :
}

__zoxide_unset j
function j() {
    __zoxide_z "$@"
}

__zoxide_unset ji
function ji() {
    __zoxide_zi "$@"
}

# Load completions.
if [[ :"${SHELLOPTS}": =~ :(vi|emacs): ]] && [ "${TERM}" != 'dumb' ]; then
    \builtin bind '"\e[0n": redraw-current-line' &>/dev/null

    function _j() {
        [[ ${#COMP_WORDS[@]} -eq 2 && ${COMP_POINT} -eq ${#COMP_LINE} ]] || return

        \builtin local -r trigger='**'
        \builtin local query="${COMP_WORDS[1]}"

        if [[ ${query} == *"${trigger}" ]]; then
            query="${query:0:$((${#query} - ${#trigger}))}"
            COMPREPLY=("$(_ZO_FZF_OPTS="\
                --bind=ctrl-z:ignore \
                --exit-0 \
                --height=35% \
                --inline-info \
                --no-sort \
                --reverse \
                --select-1 \
                " zoxide query -i -- "${query}")")
            [[ $? -eq 130 ]] && COMPREPLY=("${query}")
            \builtin printf '\e[5n'
        else
            \builtin mapfile -t COMPREPLY < <(compgen -A directory -S / -- "${query}")
        fi
    }

    \builtin complete -F _j -o nospace -- j
fi

# =============================================================================
#
# To initialize zoxide, add this to your configuration (usually ~/.bashrc):
#
# eval "$(zoxide init bash)"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
