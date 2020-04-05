#AUTHOR : Shuhaib Ibrahim

#DATE : 23-03-2020

#PROGRAM DESCRIPTION :  This shell script is used to check 
#			whether a given name is an ordinary
# 			file or a directory file or not

#INPUT FORMAT : A name is supplied as input command line argument

#OUPUT FORMAT : Display whether the name is an ordinary file or a
#		directory file or not

#OS TYPE : linux-gnu

#!/bin/bash

if test -f $1
then
	echo "$1 is an ordinary file"
elif test -d $1
then
	echo "$1 is a directory file"
else
	echo "$1 does not exists"
fi
