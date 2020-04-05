#AUTHOR : Shuhaib Ibrahim

#DATE : 23-03-2020

#PROGRAM DESCRIPTION :  This shell script is used to find
#			the smallest of 3 numbers that
#			read from the user

#INPUT FORMAT : 3 numbers with space in between them

#OUPUT FORMAT : smallest of the 3 numbers is printed as output

#OS TYPE : linux-gnu

#!/bin/bash

echo "Enter 3 numbers with spaces in between"
read a b c
s=$a
if [ $b -lt $s ]
then
	s=$b
fi
if [ $c -lt $s ]
then
	s=$c
fi
echo "Smallest of $a $b $c is $s"
