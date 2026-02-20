#!/bin/bash

Log_file=$1

if [ $# -eq 0 ]
then
        echo "Please provide arguments"
        exit 1
fi

if [ ! -f "$Log_file" ]
then
        echo "Log file doesn't exists"
        exit 1
fi

echo "Log file exists: " $Log_file

count=$(grep -c "WARN" $Log_file)
echo "Count of WARN: " $count

grep -n "INFO" $Log_file
