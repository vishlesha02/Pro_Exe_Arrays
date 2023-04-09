declare -a array=( )



for ((i=1;i<=100;i++))
do
	if [ $(($i % 11)) -eq 0 ]
	then

	array+=($i)


	fi
done

echo "The twice repeated numbers from 0 to 100 are : " 
echo ${array[@]}
