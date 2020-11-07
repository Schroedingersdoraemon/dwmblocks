#!/bin/sh
if [ $(pgrep netease-cloud | wc -l) -ne 0 ]; then
	STRING=$(lsw | grep 'Cloud Music')
	echo $STRING | awk 'BEGIN{
		num = 2;
		}{
		printf "▶ "
		while(num < NF-2){
			printf $num;
			printf " "
			num++;
		}
	}
	'
fi
