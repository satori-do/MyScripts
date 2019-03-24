#!/bin/bash

set -e

#-------------------------------------------------------------------------------------------------------------------
echo " #16 'iterating over simple values'"

for var in first second third fourth fifth
do
echo The $var item
done

#-------------------------------------------------------------------------------------------------------------------
echo " #17 'iterating over complex values'"

for var in "the first" "the second" "the third" "the fourth" fifth "I'll do it"
do
echo It is: $var item
done

#-------------------------------------------------------------------------------------------------------------------
echo " #18 'command substitution'"

file="myfile"
for var in $(cat $file)
do
echo " $var "
done

#-------------------------------------------------------------------------------------------------------------------
echo " #19 'the field separator'"

file="/etc/passwd"
IFS=$'\n'
for var in $(cat $file)
do
echo " $var"
done

#-------------------------------------------------------------------------------------------------------------------
echo " #20 'iterating over directory files using the for loop'"

for file in /home/satori/*
do
if [ -d "$file" ]
then
echo "$file is a directory"
elif [ -f "$file" ]
then
echo "$file is a file"
fi
done

#-------------------------------------------------------------------------------------------------------------------
echo " #21 'for loop c-style'"

for (( i=1; i <= 10; i++ ))
do
echo "number is $i"
done

#-------------------------------------------------------------------------------------------------------------------
echo " #22 'the while loop'"

number=10
while [ $number -gt 3 ]; do
    echo $number
    number=$(($number - 1))
done

#-------------------------------------------------------------------------------------------------------------------
echo " #23 'nested loops'"

for ((v1 = 1; v1 <= 5; v1++)); do
  echo "Start $v1:"
  for ((v2 = 1; v2 <= 5; v2++)); do
      echo " Inner loop: $v2"
  done
done

#-------------------------------------------------------------------------------------------------------------------
echo " #24 'iterate over file lines'"

IFS=$'\n'
for text in $(cat /etc/passwd); do
  echo "This line $text ++ contains"
  IFS=:
    for field in $text; do
       echo " $field"
    done
done

#-------------------------------------------------------------------------------------------------------------------
echo " #25 'controlling the loop to FOR with break command'"

for number in 10 11 12 13 14 15; do
  if [ $number -eq 14 ]; then
      break
  fi
  echo "Number: $number"
done

#-------------------------------------------------------------------------------------------------------------------
echo " #26 'controlling the loop to WHILE with break command'"

val=1
while [ $val -lt 5 ]; do # Check if number less than 5
  if [ $val -eq 4 ]; then # Check number value
      break # The Code Breaks here <==
  fi
  echo "Iteration: $val" # The Printed Message
  val=$(($val + 1))
done

#-------------------------------------------------------------------------------------------------------------------
echo " #27 'controlling the loop to FOR with 'continue' command'"

# The loop starts here
for ((number = 1; number < 10; number++)); do
  if [ $number -gt 0 ] && [ $number -lt 5 ]; then # Check if number greater than 0 and less than 5
      continue
  fi
  echo "Iteration number: $number" # The printed message
done

#-------------------------------------------------------------------------------------------------------------------
