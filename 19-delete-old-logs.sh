#!/bin/bash

SOURCE_DIR="/tmp/shellscript-logs"

R="/e[31m
G="/e[32m"
Y="/e[33m"
N="/e[0m"

if [ ! -d $SOURCE_DIR ]    #DONOTES OPPSITE
then
    echo -e "$R source directoy : $SOURCE_DIR does not exist. $N"
fi

FILES_TO_DELETE=$(find $SOURCE_DIR -type f -mtime +14 -name "*.log")

#rm -rf esthey saripothundhi but 
#practice purpose

while IFS= read -r line                    #INTERNAL FIELD SEPARATER
do
    echo " Deleting file : $line "  # paina unna line nundi thisukuntundhi
done <<< FILES_TO_DELETE
