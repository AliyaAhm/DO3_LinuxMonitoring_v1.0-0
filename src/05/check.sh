#!/bin/bash

if [ $# != 1 ]
then
    echo "ERROR: wrong number of parameters"
    exit 1
elif [[ -z "$way" ]]
then
  echo "Parameters are empty! Need 1 parametrs."
  exit 1
fi

if [[ "${way: -1}" != "/" ]]
then
    echo "ERROR: Wrong path!"
    exit 1
fi

if [[ ! -d $way ]]
then
	echo "No such directory!"
	exit 1
fi	