#!/usr/bin/env bash
IMP=$(tput setaf 1)
SEC=$(tput setaf 2)
RST=$(tput sgr0)
DSP=$(echo $XDG_SESSION_TYPE)
MAX=${1:-18}
if command -v ydotool > /dev/null; then
	for i in $(seq 1 ${MAX})
	do
		ydotool key 106:1 106:0
	done
elif command -v xdotool > /dev/null; then
	for i in $(seq 1 ${MAX})
	do
		xdotool key right
	done
else
	if [ $DSP = "wayland" ]; then
		echo "${IMP}You must have ${SEC}ydotool ${IMP}installed to run this.${RST}"
	elif [ $DSP = "x11" ]; then
		echo "${IMP}You must have ${SEC}xdotool ${IMP}installed to run this.${RST}"
	fi
fi
