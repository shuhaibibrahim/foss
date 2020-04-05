#!/bin/bash

for file in *
do
	if [ -f $file ]
	then
		echo $file | tr '[a-z]' '[A-Z]'
	fi
done
