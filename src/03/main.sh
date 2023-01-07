#!/bin/bash

if [ $# != 4 ]
then
    echo "ERROR: wrong number of parameters. Is not count 4. You need to call the script again"
    exit 1
    
else
    for param in "$@"
    do
        if [[ $param -lt 1 || $param -gt 6 ]]
        then
            echo "ERROR: wrong number of parameters. Is not digit (1-6). You need to call the script again"
            exit 1
        fi
    done
    
    if [[ $1 -eq $2 || $3 -eq $4 ]]       
        then
            echo "ERROR: wrong of parameters. Parametr number 1 = 2 or 3 = 4. You need to call the script again"
            exit 1
    else
        . ./color.sh
        . ./info.sh
    fi
fi