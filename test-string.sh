#!/bin/bash

str1="hello"
str2="world"

echo "Enter a string:"
read user_input

if [ "$user_input" = "$str1" ]; then
  echo "Correct! The entered string is equal to '$str1'"
else
  echo "Incorrect! The entered string is not equal to '$str1'"
fi
