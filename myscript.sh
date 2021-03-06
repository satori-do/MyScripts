#!/bin/bash

echo "-------------------------------------------------------------------------"
echo " #1 'comments'- \n"
# Our coment is here <-

echo "-------------------------------------------------------------------------"
echo " #2 'environment variables'"

echo "The current directory is:"
pwd
echo "The user logged in is:"
whoami

echo "-------------------------------------------------------------------------"
echo " #3 'backslash escape'"

echo "I have 1\$ in my pocket"

echo "-------------------------------------------------------------------------"
echo " #4 'user variables'"

# testing variables
grade=5
person="Adam"
echo "$person is a good boy, he is in $grade"

echo "-------------------------------------------------------------------------"
echo " #5 'comand output'"

mydir=`pwd`
echo $mydir
mydir_twice=$(pwd)
echo $mydir_twice

echo "-------------------------------------------------------------------------"
echo " #6 'math operations'"

var1=$(( 5 + 5 ))
echo $var1
var2=$(( $var1 * 2 ))
echo $var2

echo "-------------------------------------------------------------------------"
echo " #7 'if-then construction'"

if pwd; then
  echo "It works"
fi

echo "-------------------------------------------------------------------------"
user=satori
if grep $user /etc/passwd; then
  echo "The user $user Exists"
fi

echo "-------------------------------------------------------------------------"
echo " #8 'if-then-else constructions'"

user=anotherUser
if grep $user /etc/passwd; then
  echo "The user $user Exists"
else
  echo "The user $user doesn't exist"
fi

echo "-------------------------------------------------------------------------"
echo " #9 'if-then-elif constructions'"

user=anotherUser
if grep $user /etc/passwd; then
  echo "The user $user Exists"
elif ls /home; then
  echo "The user doesn’t exist but anyway there is a directory under /home"
fi

dir=/home/likegeeks
name="likegeeks"

if [ -d $dir ] && [ -n $name ]; then
    echo "The name exists and the folder $dir exists."
else
    echo "One test failed"
fi

echo "-------------------------------------------------------------------------"
echo " #10 'comparison of numbers'"

val1=6
if [ $val1 -gt 5 ]; then
  echo "The test value $val1 is greater than 5"
else
  echo "The test value $val1 is not greater than 5"
fi

echo "-------------------------------------------------------------------------"
echo " #11 'comparison of strings'"

user="satori"
if [ $user = $USER ]; then
  echo "The user $user  is the current logged in user"
fi

echo "-------------------------------------------------------------------------"
echo " #12 'comparison of strings'"

val1=text
val2="another text"
if [ $val1 \> "$val2" ]; then
  echo "$val1 is greater than $val2"
else
  echo "$val1 is less than $val2"
fi

echo "-------------------------------------------------------------------------"
echo " #13 'comparison of strings uppercase letter'"

val1=Likegeeks
val2=likegeeks
if [ $val1 \> $val2 ]; then
  echo "$val1 is greater than $val2"
else
  echo "$val1 is less than $val2"
fi

echo "-------------------------------------------------------------------------"
echo " #14 'chacking existing folders'"

mydir=/home/satori
if [ -d "$mydir" ]; then
  echo "The $mydir directory exists"
  cd $mydir
  ls
else
  echo "The $mydir directory does not exist"
fi

echo "-------------------------------------------------------------------------"
