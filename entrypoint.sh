#!/bin/sh
while [ 1 ]
do
   waitTime=$(shuf -i 1-5 -n 1)
   sleep $waitTime &
   wait $!
   instruction=$(shuf -i 0-4 -n 1)
   d=`date +%d/%b/%Y:%H:%M:%S\ %z`
   case "$instruction" in
      "1") echo "{\"time\": \"$d\", \"level\": \"ERROR\", \"message\": \"something happened in this execution.\"}"
      ;;
      "2") echo "{\"time\": \"$d\", \"level\": \"INFO\", \"message\": \"takes the value and converts it to string.\"}"
      ;;
      "3") echo "{\"time\": \"$d\", \"level\": \"WARN\", \"message\": \"variable not in use.\"}"
      ;;
      "4") echo "{\"time\": \"$d\", \"level\": \"DEBUG\", \"message\": \"first loop completed.\"}"
      ;;
   esac
done
