#!/bin/bash

if (($# >= 1))
then
    echo "ERROR: wrong number of parameters. Is not count 0 or 1. You need to call the script again"
    exit 1
    
else
    if [ ! -f ./config.conf ] 
        then
        echo "Can't find file: ./config.conf"
        exit 1
    fi
    . config.conf
    export left_back_ground=$column1_background
    export left_font_color=$column1_font_color
    export right_back_ground=$column2_background
    export right_font_color=$column2_font_color
    
    if [[ $left_back_ground == "" ]]
        then
            left_back_ground=3; column1_background="default"
    fi
    
    if [[ $left_font_color == "" ]]       
        then
            left_font_color=1; column1_font_color="default"
    fi
    
    if [[ $right_back_ground == "" ]]       
        then
            right_back_ground=5; column2_background="default"
    fi
    
    if [[ $right_font_color == "" ]]       
        then
            right_font_color=4; column2_font_color="default"
    fi
           
    for color in $(cat config.conf)
    do
        color_num=$(echo $color | awk -F= '{print $2}')
        if [[ $color_num -ne "" && ($color_num -lt 1 || $color_num -gt 6) ]]
        then
            echo "ERROR: wrong number of parameters. Is not digit (1-6). You need to call the script again"
            exit 1
        fi
    done
    
    if ! [[ $left_back_ground =~ "(^[1-6]$)" ]] && [[ $left_font_color =~ "(^[1-6]$)" ]] && [[ $right_back_ground =~ "(^[1-6]$)" ]] && [[ $right_font_color =~ "(^[1-6]$)" ]]
        then
            echo "ERROR: wrong number of parameters. Is not digit (1-6). You need to call the script again"
            exit 1

    elif [[ $left_back_ground -eq $left_font_color || $right_back_ground -eq $right_font_color ]]       
        then
            echo "ERROR: wrong of parameters. Parametr number 1 = 2 or 3 = 4. You need to call the script again"
            exit 1
 
    else
        . ./color.sh
        . ./info.sh
        echo ""
        echo "Column 1 background = $column1_background ($left_back_ground)"
        echo "Column 1 font color = $column1_font_color ($left_font_color)"
        echo "Column 2 background = $column2_background ($right_back_ground)"
        echo "Column 2 font color = $column2_font_color ($right_font_color)"
    fi
fi