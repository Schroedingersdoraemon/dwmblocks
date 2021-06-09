#!/bin/bash
name=$(mpc | head -1)
status=$(mpc status | sed -n '2p' | awk '{print $1}')
case $status in
	\[playing\])
		printf "%s %s" "▶" "$name" ;;
	\[paused\])
		printf "%s %s" "⏸" "$name" ;;
esac
