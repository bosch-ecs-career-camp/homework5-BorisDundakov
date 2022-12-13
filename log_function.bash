echo 'log ERROR|WARN|INFO "some text here"'
commands=(ERROR WARN INFO)
read func_res
IFS=', ' read -r -a array <<< "$func_res"
now=`date`

if [[ ${array[1]} != *${commands} ]]; then
	echo "command is not correct"
	exit 1;


# TODO: Cannot find a way to put if statements on the same row --> OR operator (||) doesn't seem to work!

elif [[ ${array[0]} != log ]]; then
	echo "command is not correct"
	exit 1;


fi 
echo "$now ${func_res}"