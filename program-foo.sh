#!/bin/sh

# This will be used as an example of a process 
# that runs 'forever'

while : 
do
  echo Foo says hello $(date +%s)
  trap 'echo Goodbye Foo; exit 0' INT QUIT
  sleep 1
done