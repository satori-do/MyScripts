#!/bin/bash

if [ "$1" == "Вова" ]; then echo "Привіт $1"
elif [ "$1" == "Bob" ]; then echo "Hello $1"
else echo "Who are you?"
fi

x=$2

echo "Starting CASE selection..."
case $x in
	1) echo "This is one";;
     [2-9]) echo "Two-Nine";;
    "Петя") echo "Привет $x";;
	*) echo "Parment Unknov, sorry!"
esac
if [ $? -eq 0 ]; then echo "Все ok"
 # do something
else echo "Щось не так..."
 # do something else
fi
