#!/bin/bash

if [ $# -lt 1 ]; then
   timeout=1
else
   timeout=$1
fi
echo running for $timeout hours

timeout ${timeout}h python -m SimpleHTTPServer 2359 & echo to kill server : kill `ps -o pid= -C python`
