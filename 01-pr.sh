#!/bin/bash

# # PERSON1=RAVI
# # PERSON2=RAJu
# # echo "Hello this is sample world"
# # echo "$PERSON1:: HI $PERSON2, HOW ARE YOU"
# # echo "$PERSON2:: HELLOW $PERSON1, I am ok thanks what about you"

# echo "Enter user name"
# read UNAME

# echo "Enter password"

# read -s PASSWD

# echo "user is : $UNAME and PASSWORD is : $PASSWD"


# echo "Enter user name"
# read UNAME
# echo "Enter 2nd mane"
# read UNAME2

# echo "$UNAME:: Hi $UNAME2, how are you"
# echo "$UNAME2:: Hello $UNAME, I am ok thank you, what about you"
# set -e

# Class=("KK" "DD" "RK")
# echo "2nd name of class is ${Class[1]}"
# echo "1st name of class is ${Class[0]}"
# echo "last name of classis ${Class[2]}"
# echo "all: ${Class[@]}"
# echo "NOVP: $#"
# echo "$0"

# NUMBER=$1

# if [ $NUMBER -gt 10 ]
# then 
#     echo "greater than "
# else
#     echo "lower number"
# fi

userID=id -u

if [$userID -ne 0 ]
then 
echo "you need to be run this script as a root user"
else
echo "Great, Script is going to ececute"
fi