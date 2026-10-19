#!/bin/bash

USERID=$(id -u)

if($USERID -ne 0); then
echo "Please run this command with root access"
fi

dnf install nginx -y