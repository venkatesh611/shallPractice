#!/bin/bash
NUM1=10
NUM2=20
NAME="John Doe"
RESULT=$((NUM1 + NUM2))
echo "result is: $RESULT"
RESULT2=$((NUM1 + NUM2 + NAME))
echo "result2 is: $RESULT2"
ARRAY1=(Apple Banana Cherry)
echo "First Element: ${ARRAY1[0]}"
echo "All Elements: ${ARRAY1[@]}"
echo "Array Length: ${#ARRAY1[@]}"
ARRAY1[3]="Date"
echo "Updated Array: ${ARRAY1[@]}"