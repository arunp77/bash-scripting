#!/bin/bash

num1=5
num2=10

if [ "$num1" -gt 0 ] && [ "$num2" -lt 20 ]; then
  echo "Both conditions are true"
else
  echo "At least one condition is false"
fi
