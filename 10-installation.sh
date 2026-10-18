#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "Please run this with root access"
   exit
fi

echo "Nginx is installing"
dnf install nginxcv -y

if [ $? -ne 0 ]; then
echo "Nginx instllation ...Failur"
elif
echo "Nginx installation ...Success"
fi