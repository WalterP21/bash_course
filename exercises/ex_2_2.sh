#!/bin/bash
STATUS=$(cat /etc/shadow) 
if [ STATUS -eq 0 ]
then
  echo "Command Succeeded!"
  exit 0
else
  echo "Command Failed"
  exit 1
fi