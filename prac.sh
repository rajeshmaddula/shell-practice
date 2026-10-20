#!/bin/bash

USER_ID=$(id -u)

if [ $? -ne 0 ]; then
echo "Please run this script with root user access"

dnf install nginx -y