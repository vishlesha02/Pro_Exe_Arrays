declare -a a=( )

echo "Random Array as Follows : "

for (( i=0;i<=9;i++))
do

	a+=($((RANDOM % 900 + 1)))
done
echo ${a[@]}


 for (( i=0; i<=${#a[@]}; i++ ))
        do

        for (( j=i+1; j<${#a[@]}; j++ ))
        do

        if [ ${a[$i]} -gt ${a[$j]} ]
        then
                temp=${a[$i]}
                a[$i]=${a[$j]}
                a[$j]=$temp

        fi


: '     if [ ${a[$i]} -lt ${a[$j]} ]
        then
                temp=${a[$i]}
                a[$i]=${a[$j]}
                a[$j]=$temp

'	fi
        done
done


echo "Sorted Array as Follows : " ${a[@]}
echo "Second Smallest element is " ${a[1]}
echo "Second Largest element is : " ${a[8]}

