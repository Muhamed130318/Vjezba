#!/bin/bash

if [ $UID == 0 ]
then
	echo "You have root privileges."
else
	echo "You do not have root privileges, your ID is" $UID 
fi
