#!/bin/bash
if [ $(pgrep -x cmus | wc -l) -eq 0 ]; then
	bash $HOME/prog/dwmblocks/functions/dwm_netease.sh
else
	bash $HOME/prog/dwmblocks/functions/dwm_cmus.sh
fi
