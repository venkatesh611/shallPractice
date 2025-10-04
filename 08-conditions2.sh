#!/bin/bash
echo "enter a number"
read number
if [ $number -gt 10 ] ;
then 
echo "$number is greater then 10"
elif [ $number -lt 10 ] ;
then
echo "$number is less then 10"
else
echo "$number is equal to 10"
fi