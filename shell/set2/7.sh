#AUTHOR : Shuhaib Ibrahim

#DATE : 23-03-2020

#PROGRAM DESCRIPTION :  This shell script that accepts a
#			list of filenames as its arguments
#			and  counts and reports the occurrence
# 			of each word that is present in the
#		 	first argument file on other argument files.

#INPUT FORMAT : All the valid filenames are taken as input through
#		command line arguments

#OUPUT FORMAT : count of each word that is present in the first
#		argument file on other argument files.

#OS TYPE : linux-gnu

#!/bin/bash

if [ $# -le 1 ]
then
	echo "Invalid numberof arguments"
	exit
fi
file=$1
text=$(cat $file)
shift
for i in $text
do
	echo "word : $i"
	echo "----------------"
	grep -c "$i" $*
	echo " "
done
