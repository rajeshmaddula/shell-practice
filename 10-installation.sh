#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "Please run this with root access"
fi

# echo "Nginx is installing"
# dnf install nginx -y

# if [ $? -ne 0 ]; then
# echo "Nginx instllation ...Failur"
# elif
# echo "Nginx installation ...Success"
# fi