#!/bin/bash


USER_ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[34m"

if [ $USER_ID -ne 0 ]; then

echo -e "$R Please run this script with root superuser privileges $N"
exit 1

fi

echo -e " $G installing mysql $N "
dnf install nginx -y

if [ $? -ne 0 ]; then
echo -e " Nginx intallation ...$R Failur $N "
else
echo -e " Nginx installation ...$G Success $N "

fi