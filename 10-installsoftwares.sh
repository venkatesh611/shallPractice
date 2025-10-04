#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ] ;
then 
    echo "Please run this script as root or using sudo"
    exit 1
else
    dnf install mysql -y
    if [ $? -eq 0 ] ;
    then 
        echo "mysql installed successfully"
    else
        echo "mysql installation failed"
    fi
fi