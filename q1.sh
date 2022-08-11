#!/usr/bin/bash

file_path=$1
nol=$(wc -l < $file_path)
#echo "$nol"
c=$((nol / 2))
#echo "$c"
if [ $(($nol % 2)) == 0 ]
then
d=$c
else
d=$c
fi
awk -v c1="$d" '{if(NR==c1)print $0}' $file_path
