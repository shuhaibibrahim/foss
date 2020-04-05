#AUTHOR : Shuhaib Ibrahim

#DATE : 23-03-2020

#PROGRAM DESCRIPTION :  This shell script  accepts a file
#			name starting and ending line numbers
#			as arguments and displays all the
#			lines between the given line numbers.

#INPUT FORMAT : A vald filename ,starting and ending line numbers
#		are supplied as srguments

#OUPUT FORMAT : All the lines betwwen the starting and ending 
#		numbers are diplayed as output

#OS TYPE : linux-gnu

#!/bin/bash

if [ $# -ne 3 ]
then
	echo "Invalid number of arguments"
	exit
fi
sed -n ''$2','$3''p $1
