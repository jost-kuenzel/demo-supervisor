#!/bin/sh

while : 
do
  echo $0 $(date +%s)
  trap 'echo Goodbye Foo; exit 0' INT QUIT
  sleep 1
done