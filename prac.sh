#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
echo "Please run this script with root superuser privileges"
exit 1