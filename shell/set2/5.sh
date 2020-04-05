#AUTHOR : Shuhaib Ibrahim

#DATE : 23-03-2020

#PROGRAM DESCRIPTION :  This shell script is used to find power of
#			one number raised to another number that are
#			supplied as arguments.

#INPUT FORMAT : 2 numbers are suplplied as command line arguments

#OUPUT FORMAT : Power of first number raised to the second is printed as output

#OS TYPE : linux-gnu

#!/bin/bash

if [ $# -ne 2 ]
then
	echo "Invalid number of arguments"
	exit
fi
res=$(echo "$1^$2" | bc)
echo "$1^$2 = $res"
