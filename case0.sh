#!/bin/bash

echo "Enter a fruit: "
read fruit

case "$fruit" in
  "apple")
    echo "Selected fruit: Apple"
    ;;
  "banana" | "plantain")
    echo "Selected fruit: Banana or Plantain"
    ;;
  "orange")
    echo "Selected fruit: Orange"
    ;;
  *)
    echo "Unknown fruit"
    ;;
esac
# The `esac` (case spelled backward) marks the end of the case statement.
