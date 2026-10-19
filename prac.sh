#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
echo "Please run this command with root access"
exit 1
fi

echo "installing nginx"
dnf install nginnx -y

if [ $? -ne 0 ]; then
echo "Nginx installation ...Failur"
else
echo "Nginx installation ...Success"
fi


