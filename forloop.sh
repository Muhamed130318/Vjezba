#!/bin/bash

for ip in $(seq 1 10)
do 
	ping -c 3 192.168.0.$ip 2>/dev/null
done
