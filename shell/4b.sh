#AUTHOR : Shuhaib Ibrahim

#DATE : 23-03-2020

#PROGRAM DESCRIPTION :  This shell script deletes all lines
#                       containing a specified word in one
#                       or more files supplied as arguments
#                       to it

#INPUT FORMAT : The files to be processed are supplied as
#               command line argument and the word is taken
#		as input from the user

#OUPUT FORMAT : All lines conatining the specified word in
#		each file should be deleted

#OS TYPE : linux-gnu

#!/bin/bash

if [ $# -eq 0 ]
then
	echo "invalid number of arguments"
	exit
fi
printf "Enter the word : "
read word
for file in $*
do
	if [ -f $file ]
	then
		sed -i '/'$word'/d' $file
	else
		echo "$file is not a file or file does not exist"
	fi
done
