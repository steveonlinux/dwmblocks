#!/bin/bash
# AUTHOR: STEPHEN MARKS
#echo $(curl -s wttr.in/Bakersfield?format="%l:+%C+%c+%t+%w+%m\n")
#

#forecast=$(echo $(echo $(curl -s wttr.in/bakersfield) | awk 'NR==1 {print $8}')) # First string if solo - second string if 2
#forecast_2=$(echo $(echo $(curl -s wttr.in/bakersfield) | awk 'NR==1 {print $7}')) #First string is 2
forecast=$(echo $(echo $(curl -s wttr.in/Bakersfield?format="%x+%t\n")) | awk 'NR==1 {print $1}') # Symbol
temp=$(echo $(echo $(curl -s wttr.in/Bakersfield?format="%x+%t\n")) | awk 'NR==1 {print $2}' | cut -c 2-) # Temp

if [[ $forecast -eq "o" || $forecast -eq "o" ]]; then
	echo " Sunny 🌞 " "$temp "
fi

if [[ ( $forecast -eq "mm" ) || ( $forecast -eq "mmm" ) ]]; then
	echo " Cloudy ☁️ " "$temp "
fi

if [[ ( $forecast -eq "m" ) ]]; then
	echo " Partly Cloudy ⛅ " "$temp "
fi

if [[ ( $forecast -eq "." ) || ( $forecast -eq "/" ) ]]; then
	echo " Light Rain 🌦️ " "$temp "
fi

if [[ ( $forecast -eq "///" ) || ( $forecast -eq "//" ) ]]; then
	echo " Rain 🌧️ " "$temp "
fi

if [[ ( $forecast -eq "=" ) ]]; then
	echo " Fog 🌫️ " "$temp "
fi

if [[ ( $forecast -eq "/!/" ) || ( $forecast  -eq "!/" ) || ( $forecast -eq "*!*" ) ]]; then
	echo " Thunderstorm 🌩️ " "$temp "
fi

if [[ $forecast -eq "**" || $forecast -eq "*/*" ]]; then
	echo " Snow ❄️ " "$temp "
fi

if [[ $forecast -eq "x" || $forecast -eq "x/" ]]; then
	echo " Sleet 🌧️ " "$temp "
fi
