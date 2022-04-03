#!/bin/sh

curSinkName=$(pactl info | awk '/Destino padrão: / {print $3}')
curSink=$(pactl list sinks | grep -B 4 -E "Nome: $curSinkName\$" | sed -nE 's/^Destino #([0-9]+)$/\1/p')
portName=$(pactl list sinks | grep -e 'Destino #' -e 'Porta ativa: ' | sed -n "/^Destino #$curSink\$/,+1p" | awk '/Porta ativa: / {print $3}')

case "$portName" in
    "analog-output-headphones") icon="" ;;
    "analog-output-lineout") icon="ﰝ" ;;
    "analog-output") icon=" USB" ;;
esac

#if [ "$portname" == "analog-output-lineout" ]; then
#    echo -e "ﰝ"
#else
#    echo -e ""
#fi

#[ "$portname" = "analog-output-lineout" ] && { echo "ﰝ" exit 0; } || { echo ""; exit 0; }

echo -e "$icon"
