#!/bin/bash
LINE_NUM=1
while read LINE
do
  echo "${LINE_NUM}: ${LINE}"; ((LINE_NUM++))
done < resources/read_while_loop.txt