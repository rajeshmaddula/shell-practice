#!/bin/bash

set -e #ERR

trap 'echo "There is an error in the $LINENO, Command: $BASH_COMMAND"' ERR

echo "hello world"
echo "I am learning linux"
echoo "printing error her"
echo "test"