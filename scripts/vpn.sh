#!/bin/bash

#AUTHOR: STEPHEN MARKS

if [[ $(echo $(pgrep pia | wc -m)) -gt 5 ]]; then
	echo "ON "
else
	echo "OFF "
fi

