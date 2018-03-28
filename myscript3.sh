#!/bin/bash

if ["$1" == "Vova"]; then echo "Привіт $1"
elif [ "$1" == "Bob" ]; then echo "Hello $1"
else echo "Who are you?"
fi

x=$2

echo "Starting CASE selection..."
case $x in
<------> 1) echo "This is one";;
     [2-9]) echo "Two-Nine";;
    "Петя") echo "Привет";;
<------> *) echo "Parment Unknov, sorry!"
esac

