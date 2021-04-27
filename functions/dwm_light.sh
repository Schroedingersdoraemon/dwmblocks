#!/bin/bash
scale=1;
br=$(cat /sys/class/backlight/intel_backlight/brightness)
br_max=$(cat /sys/class/backlight/intel_backlight/max_brightness)
float=$(echo "scale=1; $br/$br_max*10" | bc)
int=$(echo "$float/1" | bc)
printf "[💡 %s]" "$int"
