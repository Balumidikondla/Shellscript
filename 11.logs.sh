#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.LOG"


VALIDATE(){
    if [ $1 -ne 0 ]
    then 
       echo -e "ERROR:: $2 ... $R failed  $N"
       exit 1
    else
       echo -e "$2...$G SUCCESS $N"
    fi
}

if [ $ID -ne 0 ]
then
    echo -e "$R ERROR:: plese run this script with root access $N"
    exit1
else
    echo "you are root user"
fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? "Installing MYSQL"

yum install git -y

VALIDATE $? "Installing GIT"