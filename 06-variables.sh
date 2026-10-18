#!bin/bash

START_TIME=$(date +%S)

echo "script exected at: $START_TIME"

sleep 10

END_TIME=$(date +%s)
TOTAL_TIME=$(($END_TIME-$START_TIME))

echo "Script excuted in :$TOTAL_TIME seconds"