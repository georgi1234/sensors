#!/bin/bash

p=`sensors |tail -3|awk '{print $3}'|cut -c2-3|head -1`
temp=$p
echo $temp
if [ $temp -ge  40 ]
then
mutt -s "$(date +%Y-%m-%d) ${temp}C" gogo3888@mail.bg < /dev/null

else 
echo "Temp is good"

fi

