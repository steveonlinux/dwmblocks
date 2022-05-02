//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/	 	/*Update Interval*/	/*Update Signal*/
    {" 🐧 ", "/home/steve/scr/kernel",		    360,		        2},
    	
//	{" 🛡️ ", "/home/steve/scr/vpn.sh",		    1,		        0},

	{" 🔌 ", "/home/steve/scr/upt",		        60,		            2},

	{" 🔊 ", "/home/steve/scr/volume",			2,		            10},

	{" 📦 ","/home/steve/scr/pacupdate",		360,		        9},

	{" 🌡️ ", "/home/steve/scr/temps.sh",			1,		            3},
	
	{" 💾 ", "/home/steve/scr/memory",	        6,		            1},

	{"","/home/steve/scr/forecast.sh",		360,		        11},

	{" 🕰️ ", "/home/steve/scr/clock",			5,		            7},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim = '|';
