#!/bin/bash

if [ $# -lt 1 ]; then
   timeout=1
else
   timeout=$1
fi
echo running for $timeout hours

timeout ${timeout}h woof -U -p 57822 & echo to kill server : kill `ps -o pid= -C python`
