#!/bin/bash
if [ $(pgrep -x cmus | wc -l) -eq 0 ]; then
	if [ $(pgrep netease-cloud | wc -l) -ne 0 ]; then
		STRING=$(lsw | grep 'Cloud Music')
		echo $STRING | awk 'BEGIN{
			num = 2;
			}{
			while(num < NF-2){
				printf $num;
				printf " "
				num++;
			}
		}
		'
	fi
else
	bash $HOME/prog/dwmblocks/functions/dwm_cmus.sh
fi
