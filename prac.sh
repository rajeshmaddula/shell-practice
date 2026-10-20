#!/bin/bash


USER_ID=$(id -u)
LOGS_FOLDER=$(/var/log/shell-script)
LOG_FILE=$LOGS_FOLDER/$0.logs

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[34m"

if [ $USER_ID -ne 0 ]; then

echo -e "$R Please run this script with root superuser privileges $N"
exit 1

fi

VALIDATE(){
if [ $1 -ne 0 ]; then
echo -e " $2 intallation ...$R Failur $N "
else
echo -e " $2 installation ...$G Success $N "

fi
}

dnf install nginx -y
VALIDATE $? Nginx
