#!/bin/bash

file_path="/mnt/d/Arun 2022/Github/bash-scriptinh/test-file.sh"

if [ -e "$file_path" ]; then
  echo "File exists"
else
  echo "File does not exist"
fi
