#AUTHOR : Shuhaib Ibrahim

#DATE : 23-03-2020

#PROGRAM DESCRIPTION :  This shell script accepts one
# 			or more file name as arguments
# 			and converts all of them to 
#			uppercase, provided they exist
# 			in the current directory

#INPUT FORMAT : Any number of filenames are supplied as argumnts 

#OUPUT FORMAT : All the filenames are converted into uppercase
#		and displayed as output

#OS TYPE : linux-gnu

#!/bin/bash

if [ $# -eq 0 ]
then
	echo "invlid number of arguments"
	exit
fi
for file in $*
do
	if [ -f $file ]
	then
		new_file=$(echo $file | tr '[a-z]' '[A-Z]')
		mv $file $new_file
		echo $new_file
	else
		echo "$file is not a file or $file does not exist"
	fi
done
