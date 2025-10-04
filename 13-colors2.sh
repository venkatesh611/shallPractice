#!/bin/bash
NUM=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
if [ "$NUM" -ne 0 ] ;
then
    echo "Please run this script as root or using sudo"
    exit 1
fi
VALIDATE() {
    if [ $1 -eq 0 ] ;
    then
        echo -e "${G}$2 installed successfully${N}"
    else
        echo -e "${R}$2 installation failed${N}"
    fi
}

dnf list installed mysql 
if [ $? -eq 0 ] ;
then 
    echo -e "${Y}mysql is already installed${N}"
else
    dnf install mysql -y
    VALIDATE $? "mysql"
fi
dnf list installed httpd
if [ $? -eq 0 ] ;
then 
    echo -e "${Y}httpd is already installed${N}"
else
    dnf install httpd -y
    VALIDATE $? "httpd"
fi
dnf list installed php
if [ $? -eq 0 ] ;
then 
    echo -e "${Y}php is already installed${N}"
else
    dnf install php -y
    VALIDATE $? "php"
fi

    
    
   