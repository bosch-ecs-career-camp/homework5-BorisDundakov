#!/bin/bash

echo 'enter path name'
read path
if [[ ! -f $path ]]
then
    echo "error: invalid file path"

else
	filename="$(basename $path)"
	folderpath="${path%/*}/"
	echo "$filename is in $folderpath"

fi


