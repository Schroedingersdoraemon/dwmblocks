#!/bin/sh

# A dwm_bar function to show the master volume of ALSA
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: alsa-utils

#dwm_alsa() {
#	volume="$(amixer get Master | tail -n1 | sed -r 's/.*\[(.*)%\].*/\1/')"
#	if test "$volume" -gt 0
#	then
#		echo -e "\uE05D${volume}"
#	else
#		echo -e "Mute"
#	fi
#}

dwm_alsa () {
    VOL=$(amixer get Master | tail -n1 | sed -r "s/.*\[(.*)%\].*/\1/")
    printf "%s" "$SEP1"
    #if [ "$VOL" -eq 0 ]; then
    if $(amixer get Master| grep --quiet off); then
        printf "[muted🔇 %s%%]" "$VOL"
    elif [ "$VOL" -gt -1 ] && [ "$VOL" -le 33 ]; then
        printf "🔈 %s%%" "$VOL"
    elif [ "$VOL" -gt 33 ] && [ "$VOL" -le 66 ]; then
        printf "🔉 %s%%" "$VOL"
    else
        printf "🔊 %s%%" "$VOL"
    fi
    printf "%s\n" "$SEP2"
}

dwm_alsa
