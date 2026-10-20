#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
echo "Please run this script with root user access"
exit 1
fi

dnf list intalled nginx
if [ $? -ne 0 ]; then
echo "Nginx not installed ...installing now"
else
echo "Nginx installed ...skpping"
exit 1
fi

dnf install nginx -y
if [ $? -ne 0 ]; then
    echo "installing nginx ...Failure"
else
    echo "installing nginx ...Success"
fi

dnf list intalled mysql
if [ $? -ne 0 ]; then
echo "Mysql not installed ...installing now"
else
echo "Mysql installed ...skpping"
exit 1

fi

dnf install mysql -y
if [ $? -ne 0 ]; then
    echo "installing mysql ...Failure" 
else
    echo "installing mysql ...Success"
fi
