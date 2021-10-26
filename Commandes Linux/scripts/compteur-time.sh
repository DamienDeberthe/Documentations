#!/bin/bash

MINUTES=5
ECHO_MINUTES=$(($MINUTES + 1))

for i in `seq 1 $MINUTES`; do
  r=$(($ECHO_MINUTES - $i))
  echo "Waiting $r min..."
  sleep 1 
done
