#!/bin/bash

headcount=0
tailcount=0

for ((i=1; i<=5; i++))
do

random=$(($RANDOM%2))
if [ $random -eq 1 ]
then
headcount=$(($headcount+1))
else
tailcount=$(($tailcount+1))
fi
diff_one=$(($headcount-$tailcount))
diff_two=$(($tailcount-$headcount))
done

echo "Head on : $headcount times"
echo "Tail on : $tailcount times"

head_percentage=$(( ($headcount/5) * 100))
tail_percentage=$((100 - $head_percentage))

declare -A percentage;
percentage[head]=$head_percentage;
percentage[tail]=$tail_percentage;

echo "percentage of dictionary : ${percentage[head]}";
echo "percentage of dictionary : ${percentage[tail]}";


