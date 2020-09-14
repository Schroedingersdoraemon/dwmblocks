#!/bin/sh

# A dwm_bar function to print the weather from wttr.in
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: curl

# Change the value of LOCATION to match your city
dwm_weather() {
    LOCATION=xian
    #printf "%s" "$SEP1"

    #if [ "$IDENTIFIER" = "unicode" ]; then
        #printf "[%s" "$(curl -s wttr.in/$LOCATION?format=1)"
    #else
        #printf "[WEA %s" "$(curl -s wttr.in/$LOCATION?format=1 | grep -o "[0-9].*")"
    #fi
    weather=$(curl -s wttr.in/$LOCATION?format=1)
    ping -c 1 www.baidu.com > /dev/null 2>&1
    if [ $? -eq 0 ];then
        if [ ${#weather} -lt 10 ];then
            printf "[$weather]"
        fi
    fi
}

dwm_weather
