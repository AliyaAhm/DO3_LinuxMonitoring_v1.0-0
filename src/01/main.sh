#!/bin/bash

if [[ -n $1 ]]
then
	if [[ -n $2 ]]
		then
			echo "Too much parameters"
	else
		reg="^[+-]?[0-9]+([.][0-9]+)?$"
		if [[ $1 =~ $reg ]]
    		then
				echo "Incorrect input: string expected"
   		else
			echo $1
		fi
	fi
else
  echo "No parameters found"
fi