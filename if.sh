#!/bin/bash

NAME=$1
DATE=` date "+DATE: %Y-%m-%d%nTIME: %H:%M:%S"`
if [ "$NAME" == "foo" ]; then 
  echo $1 

elif [ "$NAME" == "bar" ]; then
  echo `ls`
  
else
  echo  $DATE
fi 
