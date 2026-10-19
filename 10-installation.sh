#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root user access"
    exit 1
fi

echo "Installing Nginx"
dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "Installing Nginx ... FAILURE"
    exit 1
else
    echo "Installing Nginx ... SUCCESS"
fi

echo "installing mysql"
dnf install mysql -y

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
