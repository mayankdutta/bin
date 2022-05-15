#!/bin/bash

printf "............................. STARTED ............................\n" # run info.cpp in out
PROG_NAME=$1

# echo "total length of arguments is $#"
# echo "$1"
# echo "$2"
# echo "$3"
# echo "$4"

output=$(g++ --std=c++20 -Wall -Wextra -Wshadow -fsanitize=undefined -fsanitize=address $PROG_NAME 2>&1)
if [[ $? != 0 ]]; then
	# There was an error, display the error in $output
	echo -e "Error:\n$output"
else
	# Compilation successfull
  if (($# == 1)); then
    ./a.out
  elif (($# == 2)); then 
    ./a.out < $2
  elif (($# == 3)); then 
    ./a.out < $2 > $3
  fi
fi

# source: https://stackoverflow.com/questions/59768931/bash-script-to-compile-and-run-c-program



