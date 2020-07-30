#!/bin/bash

# < PI4
SEARCH_MAC="b8-27-eb"
# >= PI4
# SEARCH_MAC="dc-a6-32"

PRE=192.168.1.
START=0
END=255

if [ $# = 3 ]; then
  PRE=$1
  START=$2
  END=$3
fi
if [ $# = 2 ]; then
  PRE=$1
  START=$2
fi
if [ $# = 1 ]; then
  PRE=$1
fi

echo start searching 
for i in `seq $START 1 $END`
do
  IP=$PRE$i
  ping -w 300 -n 1 $IP
  if [ "$?" = "0" ]; then
    echo atta $IP
    RES=`arp -a $IP`
    if [ "`echo $RES | grep $SEARCH_MAC`" ]; then
      echo 'Found! Raspberry pi IP is ...'
      echo $RES
      break
    fi
  fi
done
