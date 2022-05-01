#!/bin/sh

temp=$(sensors | grep -i tctl | awk '{FS==" "} ; {print $2}' | cut -c 2-)

echo ${temp}" "
