#!/bin/bash
# AUTHOR: STEPHEN MARKS
#echo $(curl -s wttr.in/Bakersfield?format="%l:+%C+%c+%t+%w+%m\n")
#

#forecast=$(echo $(echo $(curl -s wttr.in/bakersfield) | awk 'NR==1 {print $8}')) # First string if solo - second string if 2
#forecast_2=$(echo $(echo $(curl -s wttr.in/bakersfield) | awk 'NR==1 {print $7}')) #First string is 2
forecast=$(echo $(echo $(curl -s wttr.in/Bakersfield?format="%x+%t\n")) | awk 'NR==1 {print $1}') # Symbol
temp=$(echo $(echo $(curl -s wttr.in/Bakersfield?format="%x+%t\n")) | awk 'NR==1 {print $2}' | cut -c 2-) # Temp

if [[ $forecast -eq "o" || $forecast -eq "o" ]]; then
	echo " Sunny đ " "$temp "
fi

if [[ ( $forecast -eq "mm" ) || ( $forecast -eq "mmm" ) ]]; then
	echo " Cloudy âī¸ " "$temp "
fi

if [[ ( $forecast -eq "m" ) ]]; then
	echo " Partly Cloudy â " "$temp "
fi

if [[ ( $forecast -eq "." ) || ( $forecast -eq "/" ) ]]; then
	echo " Light Rain đĻī¸ " "$temp "
fi

if [[ ( $forecast -eq "///" ) || ( $forecast -eq "//" ) ]]; then
	echo " Rain đ§ī¸ " "$temp "
fi

if [[ ( $forecast -eq "=" ) ]]; then
	echo " Fog đĢī¸ " "$temp "
fi

if [[ ( $forecast -eq "/!/" ) || ( $forecast  -eq "!/" ) || ( $forecast -eq "*!*" ) ]]; then
	echo " Thunderstorm đŠī¸ " "$temp "
fi

if [[ $forecast -eq "**" || $forecast -eq "*/*" ]]; then
	echo " Snow âī¸ " "$temp "
fi

if [[ $forecast -eq "x" || $forecast -eq "x/" ]]; then
	echo " Sleet đ§ī¸ " "$temp "
fi
