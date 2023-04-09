
declare -a array=(" ")


for ((i=0;i<=9;i++))
do
	array+=($((RANDOM % 100 + 300)))
done

echo ${array[@]}

