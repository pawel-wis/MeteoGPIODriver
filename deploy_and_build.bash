#!/bin/bash
target=$(pwd)
destination=/home/izzo/meteo_dev
sshpass -p $rpi_pass scp $target/* $rpi_login@$rpi_ip:$destination
sshpass -p $rpi_pass ssh $rpi_login@$rpi_ip << EOF
	# building code here
EOF
