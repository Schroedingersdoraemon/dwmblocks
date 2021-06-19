#!/bin/bash
name=$(mpc | head -1)
status=$(mpc status | sed -n '2p' | awk '{print $1}')
shuffle=$(mpc status | grep 'random: on' | wc -l)
case $shuffle in
	0)
		shuffle_status='' ;;
	1)
		shuffle_status='🔀' ;;
esac

case $status in
	\[playing\])
		printf "%s %s %s" "▶" "$name" "$shuffle_status";;
	\[paused\])
		printf "%s %s %s" "⏸" "$name" "$shuffle_status";;
esac
