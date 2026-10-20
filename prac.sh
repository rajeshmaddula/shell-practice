#!/bin/bash

USER_ID=$(id -u)
LOG_FOLDER="/var/log/shell-script"
LOG_FILE="/var/log/shell-script/$0.log"


if [ $USER_ID -ne 0 ]; then
echo "Please run this script with root user access" | tee -a $LOG_FILE
exit 1
fi

mkdir -p $LOG_FOLDER

VALIDATE(){
if [ $1 -ne 0 ]; then
    echo "$2 ...Failure" | tee -a $LOG_FILE
else
    echo "$2 ...Success" | tee -a $LOG_FILE
fi
}

for package in $@
do
dnf list installed $package &>>$LOG_FILE
if [ $? -ne 0 ]; then
    echo "$package not installed ...installing now"
    dnf install $package -y >>&$LOG_FOLDER
    VALIDATE $? "$package installation"
else
    echo "$package already installed ...skipping" 
fi
done
