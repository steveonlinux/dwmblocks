#/bin/bash

#AUTHOR: STEPHEN MARKS

pid="$(pgrep rtorrent)"
pid2="$(pgrep deluge)"

if [[ $pid -ne "" || $pid -ne " " || $pid2 -ne "" || $pid2 -ne " " ]]; then
	echo "UP "
else
	echo "DOWN "
fi
