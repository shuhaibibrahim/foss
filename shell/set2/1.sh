#AUTHOR : Shuhaib Ibrahim

#DATE : 23-03-2020

#PROGRAM DESCRIPTION :  This shell script is used to calculate the
#		       	gross salary of an employee.
#			i) if basic salary is < 1500 then HRA=10% 
#			of the basic and DA =90% of the basic.
#			ii) If basic salary is >=1500 then HRA=Rs500 
#			and DA=98% of the basic.

#INPUT FORMAT : Basic salary of an employee is taken as input

#OUPUT FORMAT : Gross salayru of the employee is printed as output

#OS TYPE : linux-gnu

#!/bin/bash

printf "\nEnter the basic salary : "
read bs
if [ $bs -lt 1500 ]
then
	hra=$(( $bs/10 ))
	da=$(( $bs*90/100 ))
else
        hra=500
        da=$(( $bs*98/100 ))
fi
gs=$(( $bs+$hra+$da))
echo "Gross salary : $gs"

