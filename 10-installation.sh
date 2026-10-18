#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "Please run this with root access"
   exit
fi

echo "Nginx is installing"
dnf install ngnix -y

if [ $? -ne 0 ]; then
echo "Nginx instllation ...Failur"
exit 1

else
echo "Nginx installation ...Success"
fi