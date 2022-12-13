#!/bin/bash

echo 'enter directory'
read directory

counter=1

for i in *.mp3; do
	new=$(printf "%02d.mp3" "$a")
	mv -i -- "$i" "$new"
	let a=a+1

echo 'renaming was successful!'
done
