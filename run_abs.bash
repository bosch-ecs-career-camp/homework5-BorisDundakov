echo 'enter numbers'
read nums_list

IFS=', ' read -r -a array <<< "$nums_list"

for index in "${!array[@]}"
do
	echo "Absolute number of ${array[index]} is ${array[index]#-}"
done

