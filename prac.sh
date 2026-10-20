#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
echo "Please run this script with root user access"
exit 1
fi

dnf install nginx -y
if [ $? -ne 0 ]; then
    echo "installing nginx ...Failure"
else
    echo "installing nginx ...Success"
fi

dnf install mysql -y
if [ $? -ne 0 ]; then
    echo "installing mysql ...Failure" 
else
    echo "installing mysql ...Success"
fi
