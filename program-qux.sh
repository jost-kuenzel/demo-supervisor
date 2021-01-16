#!/bin/sh

# This will be used as an example of a process that terminates 
# on its own after a while

echo Qux is here $(date +%s)
sleep 4
echo Bye bye from Qux
