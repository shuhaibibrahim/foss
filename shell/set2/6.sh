#AUTHOR : Shuhaib Ibrahim

#DATE : 23-03-2020

#PROGRAM DESCRIPTION :  This shell script gets executed
#			displays the message either “Good Morning”
#			or “Good Afternoon “ or “Good Evening”
#			depending upon the time at which user logs in.

#INPUT FORMAT : No input other than the command to run the script

#OUPUT FORMAT : “Good Morning “ or “Good Afternoon “ or “Good evening “
#		is to be displayedddepending on the time of execution

#OS TYPE : linux-gnu

#!/bin/bash

check=$(date +%H)
if [ $check -ge 06 -a $check -le 12 ]
then
        echo "Good morning"
elif [ $check -ge 12 -a $check -le 17 ]
then
        echo "Good afternoon"else
        echo "Good evening"
fi
