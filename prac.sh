!/bin/bash

USER_ID=$(id -u)
LOGS_FOLDER="/var/log/shell-robo"
LOGS_FILE="$LOGS_FOLDER/$0.log"


R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[34m"


if [ $USER_ID -ne 0 ]; then
echo -e "$R Please run this command with root user $N"
fi

#mkdir -p $LOGS_FOLDER
