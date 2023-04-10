declare -a primefactors=()
read -p "Number :" no


for ((i=2;i<$no;i++))
do
	while [ $(($no%$i)) -eq 0 ]
	do
		primefactors+=($i)
		no=$(($no/$i))
	done
done
	if [ $no -gt 2 ]
	then
	primefactors+=($no)
	fi

echo ${primefactors[@]}
