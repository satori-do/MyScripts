#!/bin/bash

echo "Please input second number of month:"

read m

for (( i=1; i <= 9; i++  ))
do
touch -a -m -t 20190${m}0${i}2359.09 2019-0${m}-0${i}.log
if [ ${i}==9 ]; then
touch -a -m -t 20190${m}102359.09 2019-0${m}-10.log
fi
done

for (( i=1; i <= 9; i++  ))
do
touch -a -m -t 20190${m}1${i}2359.09 2019-0${m}-1${i}.log
if [ ${i}==9 ]; then
touch -a -m -t 20190${m}202359.09 2019-0${m}-20.log
fi
done

for (( i=1; i <= 9; i++  ))
do
touch -a -m -t 20190${m}2${i}2359.09 2019-0${m}-2${i}.log
if [ ${i}==9 ]; then
touch -a -m -t 20190${m}302359.09 2019-0${m}-30.log
fi
done

if [ $m -eq $((m/2*2)) ]; then
 echo "Logs for month #0${m} were generated successfully!"
else
 touch -a -m -t 20190${m}312359.09 2019-0${m}-31.log
 echo "Logs for month #0${m} were generated successfully!"
fi
