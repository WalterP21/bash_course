#!/bin/bash
function hello(){
  echo "Hello"
  now
}
now(){
  echo "It's $(date +%r)"
}
hello