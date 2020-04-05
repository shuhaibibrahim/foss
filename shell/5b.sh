#AUTHOR : Shuhaib Ibrahim

#DATE : 23-03-2020

#PROGRAM DESCRIPTION : This shell script accepts two file names as
# 		       arguments, checks if the permissions for these
# 		       files are identical and if the permissions are
# 		       identical, output common permissions and otherwise
# 		       output each filename followed by its permissions.

#INPUT FORMAT : The two filenamess should be supplied as arguments

#OUPUT FORMAT : The common permission (If the files have identical
# 		permissions) or the permission of each file(otherwise)
# 		should be displayed as output

#OS TYPE : linux-gnu

#!/bin/bash

p1=$(ls -l | grep $1 | head -c 10)
p2=$(ls -l | grep $2 | head -c 10)
if [ "$p1" == "$p2" ];
then
	printf "%s\n" "Both files have the same permission : $p1"
else
	printf "%s\n" "$1 and $2 have different permissions : "
	printf "%s\t\t %s\n%s\t%s\n" "$1" "$2" "$p1" "$p2"
fi
