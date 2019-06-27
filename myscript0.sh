#!/bin/bash

set -e

function days_of_month() {
currentmonth=$(date +%B)

# m=$(date +%m)

year=$(date +%Y)

case $m in
    0[13578]|10|12) days=31;;
    0[469]|11)	    days=30;;
    *)	(( year % 400 )) && days=29 || days=28
esac

# echo "$m has $days days"

echo $days
}

echo "Please input number of month:"

read m

if [ $(printf $m | wc -c) -eq 1 ]; then m="0${m}"; fi

# echo ${m}
# echo $(days_of_month ${m})
# echo $(days_of_month)

for (( i=1; i <= $(days_of_month ${m}); i++  ))
do
  if [ ${i} -lt 10  ]; then
    touch -a -m -t 2019${m}0${i}2359.09 2019-${m}-0${i}.log
  else
    touch -a -m -t 2019${m}${i}2359.09 2019-${m}-${i}.log
  fi
done
