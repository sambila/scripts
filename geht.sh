#!/bin/bash
## Test Script

EM=sa
MS=so
# Erste Möglichkeit 
if [ "$EM" == "$1" ]; then 
  echo "Gute gemacht" 

###  Möglichkeit
elif [ "$MS" == "$1" ]; then
  echo `pwd`
### Ansonsten
else 
# Echo es zuende 
echo ""$1" will kein Mensch"
fi
