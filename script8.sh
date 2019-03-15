#!/bin/bash
ips=0

while [ $ips -ne 254 ];do

	ips=$(expr $ips + 1)
	comprobar=$( ping -c 1 10.0.2.$ips | grep "100%" | wc -c);
	
	if [ $comprobar -gt 0 ];then
	   echo "ERROR 10.0.2.$ips"
	else
		echo "ENCONTRADA 10.0.2.$ips"
	fi
done
