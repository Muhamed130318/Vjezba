#!/bin/bash

adduser --shell --home --allow-bad-names

read -p "Username of the new user: " name
read -p "Shell of the new user: " shell
read -p "Home directory of the new user: " home

function add {
	adduser $1 --shell $2 --home $3 --allow-bad-names
}

add $name $shell $home
