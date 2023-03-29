#!/bin/bash 

####################
# Author : Jatin Motwani
# Date : 29th March 2023 
# Description :- Check among two numbers stored in variable a and b, who is greater using if and else.
####################

a=23
b=22

if [ $a -gt $b ]
then 
	echo "a is greater than b"
else 
	echo "b is greater than a"
fi
