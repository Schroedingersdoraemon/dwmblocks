#!/bin/bash
if [ $(pgrep -x mpd | wc -l) -eq 1 ] && [ $(mpc|head -1|wc -l) -eq 1 ]; then
	bash $HOME/prog/dwmblocks/functions/dwm_mpd.sh
elif [ $(pgrep -x cmus| wc -l) -eq 1 ]; then
	bash $HOME/prog/dwmblocks/functions/dwm_cmus.sh
elif [ $(pgrep -x netease-cloud| wc -l) -lt 1 ]; then
	bash $HOME/prog/dwmblocks/functions/dwm_netease.sh
fi
