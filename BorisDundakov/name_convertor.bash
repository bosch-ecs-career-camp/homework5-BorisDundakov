#!/bin/bash

echo 'enter directory'
read directory

if [[ -d $directory ]]; then
	echo 'specified dir exists'
	counter=0
	pat='~[0-9][0-9] Track [0-9][0-9].mp3.mp3~gm'
	for FILE in "$directory"/*; do
		filename = basename "$FILE"
		if [$filename ~= pat]
		then
			counter +=1
			filename = '$counter.mp3'

		fi

	done

else
	echo 'not in dir'  
fi
