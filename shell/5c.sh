#AUTHOR : Shuhaib Ibrahim

#DATE : 23-03-2020

#PROGRAM DESCRIPTION :  This shell script is used to
#			validate password strength.
#			The asssumptions made for
#			password strnegth are :-
#			Length – minimum of 8 characters.
#			Contain both alphabet and number.
#			Include both the small and capital
#			case letters.

#INPUT FORMAT : The password is taken as input from the user

#OUPUT FORMAT : <Strong password> if the password staifies
#		the criterias mentioned, <Weak password>
#		otherwise

#OS TYPE : linux-gnu

#!/bin/bash

echo "enter the password"
read password
len="${#password}"
if test $len -ge 8 ;
then
	echo "$password" | grep -q [0-9]
	if test $? -eq 0 ;
	then
		echo "$password" | grep -q [A-Z]
		if test $? -eq 0 ;
		then
			echo "$password" | grep -q [a-z]
			if test $? -eq 0 ;
			then
				echo "Strong password"
			else
		        	echo "Weak password"
	                fi
		else
		        echo "Weak password"
            	fi
	else
	        echo "Weak password"
	fi
else
	echo "Weak password"
fi
