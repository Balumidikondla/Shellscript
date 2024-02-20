#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
    echo "ERROR::please run this script with rooot user"
    exit 1
else
    echo "you are root user"
fi

yum install mysql -y

if [ $? -ne 0 ]
then 
   echo "ERROR:: Installing MYSQL is failed"
   exit1
else
   echo "Installing MYSQL  is SUCCESS"
fi

yum install git -y

if [ $? -ne 0 ]
then 
   echo "ERROR:: Installing GIt is failed"
   exit1
else
   echo "Installing GIT  is SUCCESS"
fi