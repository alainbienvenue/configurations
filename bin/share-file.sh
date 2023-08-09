#!/bin/bash

if [ $# -lt 1 ]; then
   echo usage: %0 file-to-serve [timeout in hours]
   echo sudo apt-get install woof 
   echo to install woof
fi

if [ $# -lt 2 ]; then
   timeout=10
else
   timeout=$2
fi
echo running for $timeout minutes

gtimeout ${timeout}m woof.py  -p 57822 $1 & echo to kill server : kill `pgrep -f woof.py`
