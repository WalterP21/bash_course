#!/bin/bash
read -p "Please provide input: " INPUT
if [ -d ${INPUT} ]
then
  echo "${INPUT} is a directory"
  ls ${INPUT}
elif [ -f ${INPUT} ]
then
  echo "${INPUT} is a regular file"
else
  echo "${INPUT} is some other file type"
fi