#AUTHOR : Shuhaib Ibrahim

#DATE : 23-03-2020

#PROGRAM DESCRIPTION :  This shell script accepts any
#			number of arguments and prints
# 			them in the reverse order

#INPUT FORMAT : Any number of inputs are supplied as
#		command lline arguments

#OUPUT FORMAT : The number of argumnets and command line
#		arguments in reverse order is to be displayed

#		example : ./pgm.sh a b c
#		No of arguments arguments are 3
#		Arguments in reverse order c b a

#OS TYPE : linux-gnu

#!/bin/bash

if [ $# -eq 0 ]
then
	echo "Invalid number of arguments"
	exit
fi
echo "Number of argeumnets are $#"
for i in $*
do
	rev="$i $rev"
done
echo "Aruments in reverse order $rev"
