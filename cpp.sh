#!bin/bash

echo Enter fileName:
read PROG_NAME
PROG_NAME="$PROG_NAME.cpp"

output=$(g++ --std=c++17 -Wall -Wextra $PROG_NAME 2>&1)
if [[ $? != 0 ]]; then
	# There was an error, display the error in $output
	echo -e "Error:\n$output"
else
	# Compilation successfull
	echo Have in?
	read input

	if (($input == 1)); then
		./a.out <in
	else
		./a.out
	fi

fi
