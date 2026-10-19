#!/bin/bash

set -e
trap 'echo "There is an error in the $LINENO, Command: $BASH_COMMAND"' ERR

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[34m"

if [ $USERID -ne 0 ]; then
    echo -e "$R Please run this script with root user access $N" | tee -a $LOGS_FILE
    exit 1
fi

mkdir -p $LOGS_FOLDER


for package in $@
do 
  dnf list installed $package &>>$LOGS_FILE
  if [ $? -ne 0 ]; then
     echo "$package is not installed, installing now"
     dnf install $package -y &>> $LOGS_FILE
     
  else
     echo -e "$Y $package  already installed ,skipping $N"
  fi
done