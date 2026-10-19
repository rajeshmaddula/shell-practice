#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
echo "Please run this command with root access"
exit 1
fi

echo "installing nginx"
dnf install nginx -y

if [ $? -ne 0 ]; then
echo "Nginx installation ...Failur"
else
echo "Nginx installation ...Success"
fi


echo "installing mysql"
dnf install mysyuql -y

if [ $? -ne 0 ]; then
echo "MySql installation ...Failur"
else
echo "MySql installation ...Success"
fi

echo "installing Nodejs"
dnf install nodejs -y

if [ $? -ne 0 ]; then
echo "Nodejs installation ...Failur"
else
echo "Nodejs installation ...Success"
fi
