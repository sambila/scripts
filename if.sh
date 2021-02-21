#!/bin/bash

NAME=$1
DATE=` date "+DATE: %Y-%m-%d%nTIME: %H:%M:%S"`

# If your Name is foo
if [ "$NAME" == "foo" ]; then 
  echo $1 

# Or the other name is bar
elif [ "$NAME" == "bar" ]; then
  echo `ls`
  
# Else I tell you the date  
else
  echo  $DATE
fi 
