#AUTHOR : Shuhaib Ibrahim

#DATE : 23-03-2020

#PROGRAM DESCRIPTION :  This shell script is used to print
#			number in reverse order

#INPUT FORMAT : The number to be reversed

#OUPUT FORMAT : Reverse of the input number

#OS TYPE : linux-gnu

#!/bin/bash

printf "Enter a number : "
read n
rev=0
while [ $n -gt 0 ]
do
	rev=$((($rev*10)+($n%10)))
	n=$(($n/10))
done
echo "Reversed number : $rev"
