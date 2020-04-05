#AUTHOR : Shuhaib Ibrahim

#DATE : 23-03-2020

#PROGRAM DESCRIPTION :  This shell script is used to read
#			in a string and display a suitable
#			message if it does not have at least
#			10 characters using expr command.

#INPUT FORMAT : An input string of any length

#OUPUT FORMAT : A suitable message if the input string does
#		not have at least 10 characters

#OS TYPE : linux-gnu

#!/bin/bash

echo "Enter a string : "
read str
len=$(expr length $str)
if [ $len -lt 10 ]
then
	echo "String has less than 10 character"
elif [ $len -eq 10 ]
then
	echo "String has exactly 10 characters"
else
	echo "String has more than 10 characters"
fi
