#!/bin/bash

if [ "$#" -ne 2 ]; then
	echo "You should provide exactly two arguments"
	exit 1
fi

file_name=$1
word_to_search=$2

if [ ! -f "$file_name" ]; then
	echo "File $file_name does not exists"
	exit 1
fi

word_count=$(grep -o -i -w "$word_to_search" "$file_name" | wc -l)

echo "The word $word_to_search appears $word_count times in the file $file_name"
