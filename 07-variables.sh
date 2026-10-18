#!/bin/bash

#### Special variable ####
echo "All args passed to the script: $@"
echo "Number of variables passed: $#"
echo "Script name: $0"
echo "Present directory: $PWD"
echo "Who is running: $HOME"
echo "Home directory of the current user: $USER"
echo "PID of this script: "$$
sleep 100 &
echo "PID of recently executed backgroung process: $!"
echo "All args passed to the script: $*"
