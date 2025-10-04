#!/bin/bash
USER=$(id -u)
if [ $user -ne 0 ] ;
then 
    echo "Please run this script as root or using sudo"
    exit 1  
fi
VALIDATE() {
    if [ $1 -eq 0 ] ;
    then
        echo "$2 installed successfully"
    else
        echo "$2 installation failed"
    fi
}
dnf install mysql -y
VALIDATE $? "mysql"
dnf install httpd -y
VALIDATE $? "httpd"
dnf install php -y
VALIDATE $? "php"