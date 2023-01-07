#!/bin/bash

 end='\033[0m'
        case $left_back_ground in
           "1") parametr1='\033[107m'; left_back_ground='white';;
           "2") parametr1='\033[41m'; left_back_ground='red';;
           "3") parametr1='\033[42m'; left_back_ground='green';;
           "4") parametr1='\033[104m'; left_back_ground='blue';;
           "5") parametr1='\033[45m'; left_back_ground='purple';;
           "6") parametr1='\033[40m'; left_back_ground='black';;
        esac
        case $left_font_color in
            "1") parametr2='\033[97m'; left_font_color='white';;
            "2") parametr2='\033[91m'; left_font_color='red';;
            "3") parametr2='\033[92m'; left_font_color='green';;
            "4") parametr2='\033[96m'; left_font_color='blue';;
            "5") parametr2='\033[95m'; left_font_color='purple';;
            "6") parametr2='\033[40m'; left_font_color='black';;
        esac
        case $right_back_ground in
            "1") parametr3='\033[107m'; right_back_ground='white';;
            "2") parametr3='\033[41m'; right_back_ground='red';;
            "3") parametr3='\033[42m'; right_back_ground='green';;
            "4") parametr3='\033[104m'; right_back_ground='blue';;
            "5") parametr3='\033[45m'; right_back_ground='purple';;
            "6") parametr3='\033[40m'; right_back_ground='black';;
        esac
        case $right_font_color in
            "1") parametr4='\033[97m'; right_font_color='white';;
            "2") parametr4='\033[91m'; right_font_color='red';;
            "3") parametr4='\033[92m'; right_font_color='green';;
            "4") parametr4='\033[96m'; right_font_color='blue';;
            "5") parametr4='\033[95m'; right_font_color='purple';;
            "6") parametr4='\033[40m'; right_font_color='black';;
            
        esac