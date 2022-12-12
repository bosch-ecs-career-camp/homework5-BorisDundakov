#!/bin/bash
nums=()
while read num
do
	nums=(${nums[@]} "$num")

done

IFS=$'\n'
len=${#nums[@]}
echo "Largest of"
echo "${#nums[@]}"
echo "numbers is"
printf "${nums[*]}"| sort -nr | head -n1