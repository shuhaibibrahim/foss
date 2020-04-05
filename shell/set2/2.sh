#AUTHOR : Shuhaib Ibrahim

#DATE : 23-03-2020

#PROGRAM DESCRIPTION :  This shell script is used to display
#			the calendar for current month with
#			current date replaced by * or **
#			depending on whether the date has one
#			digit or two digits.

#INPUT FORMAT : There is no user input other than command to
#		command to execute shell script

#OUPUT FORMAT : Calendder of current month with current date
#		replaced by * or ** depending on whether the
#		date has one digit or two digits.


#OS TYPE : linux-gnu

#!/bin/bash

d=$(date +'%d')
if [ $d -le 9 ]
then
	ncal -h | sed -r 's/\b$d\b/*/'
else
	ncal -h|sed -r "s/\b$d\b/**/"
fi
