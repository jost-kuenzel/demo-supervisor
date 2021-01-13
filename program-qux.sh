#!/bin/sh

# This will be used as an example of a process that terminates 
# on its own after a while

echo $0 $(date +%s)
sleep 4
echo Bye bye from Qux
