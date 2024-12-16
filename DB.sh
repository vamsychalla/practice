#!/bin/bash

USER=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCEIPT_NAME=$(echo $0 | cut -d "," -f1)


LOGFILE=/tmp/$SCEIPT_NAME-$TIMESTAMP.log
Validate(){
    if [ $1 -ne 0 ]
    then 
        echo "$2... Failed"
        exit 1
    else
        echo "$2... Success"
    fi
}


if [ $USER -ne 0 ]
 then 
    echo "This script need to be run with root user or Admin credemtials"
    exit 1
else
    echo "Going to install given requirement"
fi

dnf install mysql-server -y
Validate $? "INSTALLATION of MYSQL server"

systemctl enable mysqld
Validate $? "Enable MYSQL server"
systemctl start mysqld
Validate $? "Starting the server"

mysql -h db.hnsc.fun -uroot -pExpenseApp@1 
if [ $? -ne 0]
then 
    mysql_secure_installation --set-root-pass ExpenseApp@1
    Validate S? "Mysql root password setup"
else
echo "already password was setup"
fi

