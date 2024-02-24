#!/bin/bash

ID=($id -u)
R="\e[31m"
G="\e[32m"
Y="\e[32m"
N="\e[0m"

LOGFILE ="/tmp/$0-$TIMESTAMP.LOG"

echo "script started exacuting at $TIMESTAMP" &>> $LOGFILE

vALIDATE (){
if [$1 -ne 0]
then
   echo -e "$2...$R FAILED $N"
else
   echo -e "$2...$G SUCCESS $N"

fi    
}

if [$ID -ne 0]
then 
    echo -e "$R Error ::please run this script with root access $N"

    exit1
else 
    echo  "you are root user"
fi
for practice in $@
do 
   yum list installed $package &>>$ LOGFILE
   VALIDATE $? "installation of $ package"
else 
   echo -e"$package is already installed...$Y SKIPPING $N"
fi

