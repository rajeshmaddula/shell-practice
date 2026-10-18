#!/bin/bash

NUM1=100
NUM2=100

SUM=$(($NUM1+$NUM2))

echo "Sum is: $SUM"

# Array

FRUITS=("Apple" "Banana" "Pomo")

echo "Fruits are: ${FRUITS[@]}"
echo "First fruit is : ${FRUITS[0]}"
echo "First fruit is : ${FRUITS[1]}"
echo "First fruit is : ${FRUITS[2]}"