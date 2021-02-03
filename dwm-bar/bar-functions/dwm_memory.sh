#!/bin/sh

dwm_memory () {
	MEMUSED=$(free | grep Mem | awk '{printf("%5.2f" , $3 / 1024 / 1024)}')
	MEMAVA=$(free | grep Mem | awk '{printf("%5.2f" , $7 / 1024 / 1024)}')

	printf "%s" "$SEP1"
	printf "%sG/%sG" "$MEMUSED" "$MEMAVA"
	printf "%s\n" "$SEP2"
}

dwm_memory
