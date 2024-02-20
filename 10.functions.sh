#!/bin/bash

ID=$(id -u)

VALIDATE(){

    if [ $ID -ne 0 ]
    then 
       echo "ERROR::please run this script with rooot user"
       exit 1
    else
       echo "you are root user"
    fi
}

if [ $ID -ne 0 ]
then
    echo "ERROR:: plese run this script with root access"
    exit1
else
    echo "you are root user"
fi

yum install mysql -y

VALIDATE

yum install git -y

VALIDATE