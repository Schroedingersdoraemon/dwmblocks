#!/bin/bash
name=$(mpc | head -1)
printf "%s %s" "▶" "$name"
