//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		        /*Update Interval*/         /*Update Signal*/
	{"",    "/home/dylan/prog/dwmblocks/functions/dwm_cmus.sh",      1,  0},
	{" 💿 ","/home/dylan/prog/dwmblocks/functions/dwm_resources.sh", 5,  0},
	{"",    "/home/dylan/prog/dwmblocks/functions/dwm_netspeed.sh",  0,  0},
	{"",    "/home/dylan/prog/dwmblocks/functions/dwm_alsa.sh",      0,  0},
	{"",    "/home/dylan/prog/dwmblocks/functions/dwm_battery.sh",   10, 0},
	{"📆 ", "/home/dylan/prog/dwmblocks/functions/dwm_date.sh",      60, 0},
	{"",    "/home/dylan/prog/dwmblocks/functions/dwm_weather.sh",   60,  0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " ";
static unsigned int delimLen = 20;
