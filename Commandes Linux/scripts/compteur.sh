#!/bin/bash


count=5
echo_count=$(($count + 1))

for i in `seq 1 $count`; do
  result=$(($echo_count - $i))
  echo "Waiting $result..."
  sleep 1
done

exit 0
