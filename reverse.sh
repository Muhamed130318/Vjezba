#!/bin/bash


read -p "File: " file

var=$(ls -la $file | cut -d ' ' -f 4)

for((i=${#var}-1;i>=0;i--));
do rev="$rev${var:$i:1}";
done

echo $rev
