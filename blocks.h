//Modify this file to change what commands output to your statusbar, and recompile using the make command.
/*
    kill -34-(update signal) $(pidof dwmblocks)
    pkill -RTMIN+(update signal) $(pidof dwmblocks)
*/
static const Block blocks[] = {
	/*Icon*/	/*Command*/		        /*Update Interval*/         /*Update Signal*/
	{"",    "~/prog/dwmblocks/functions/dwm_cmus.sh",      5,  1},
	{" 💿","~/prog/dwmblocks/functions/dwm_resources.sh",  5,  0},
	{"",    "~/prog/dwmblocks/functions/dwm_netspeed.sh",  0,  0},
	{"",    "~/prog/dwmblocks/functions/dwm_alsa.sh",      0,  2},
	{"",    "~/prog/dwmblocks/functions/dwm_battery.sh",   10, 0},
	{"📆 ", "~/prog/dwmblocks/functions/dwm_date.sh",      60, 0},
	{"",    "~/prog/dwmblocks/functions/dwm_weather.sh",   0,  3},
};


//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " ";
static unsigned int delimLen = 20;
