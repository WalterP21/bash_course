#!/bin/bash
INPUT=$1
if [ -d $INPUT ]
then
  echo "${INPUT} is a directory"
  ls ${INPUT}
  exit 1
elif [ -f ${INPUT} ]
then
  echo "${INPUT} is a regular file"
  exit 0
else
  echo "${INPUT} is some other file type"
  exit 2
fi