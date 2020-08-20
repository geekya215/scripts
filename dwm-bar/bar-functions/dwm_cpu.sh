#!/bin/sh

dwm_cpu() {
	USEAGE=$((grep 'cpu ' /proc/stat;sleep 0.5;grep 'cpu ' /proc/stat)|awk -v RS="" '{printf("%5.2f%%", ($13-$2+$15-$4)*100/($13-$2+$15-$4+$16-$5))}')
	printf "%s" "$SEP1"
	printf "%s" " $USEAGE"
	printf "%s\n" "$SEP2"
}

dwm_cpu
