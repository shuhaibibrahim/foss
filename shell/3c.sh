#AUTHOR : Shuhaib Ibrahim

#DATE : 23-03-2020

#PROGRAM DESCRIPTION :  This shell script determines
# 			the period for which a specified
# 			user is working on the system

#INPUT FORMAT : No inupts are taken

#OUPUT FORMAT : The time for which the user is logged
#		in is displayed as output

#OS TYPE : linux-gnu

#!/bin/bash

echo "Enter the USER NAME : "
read user
last $user
