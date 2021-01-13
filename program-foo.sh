#!/bin/sh

# This will be used as an example of a process 
# that runs 'forever'

while : 
do
  echo $0 $(date +%s)
  trap 'echo Goodbye Foo; exit 0' INT QUIT
  sleep 1
done