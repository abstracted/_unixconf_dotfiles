#!/usr/bin/env bash

function get_hex() {
	printf "%02x\n" $((16 * ($1 + 1) - 1)) 
}

function color_string() {
	echo "#$(get_hex $2){color$1.strip}"
}


for i in {0..15}
do 
	for k in {0..15}
	do
		echo "*color$i-alpha$k: $(color_string $i $k)" 
		echo "*.color$i-alpha$k: $(color_string $i $k)" 
	done
done
