echo 'log ERROR|WARN|INFO "some text here"'
read func_res
IFS=', ' read -r -a array <<< "$func_res"

if [[ ${!array[0]}=='log' ]]; then
	echo 'invalid input!'
fi


if [ !array[1]=='ERROR' ] || [ !array[1]=='WARN' ] || [ !array[1]=='INFO' ]; then
	echo 'invalid keyword!'
fi



now=`date`

echo "$now ${func_res}"

