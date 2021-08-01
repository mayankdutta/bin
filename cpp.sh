#!bin/bash

echo -n "Enter fileName : "
read PROG_NAME
PROG_NAME="$PROG_NAME.cpp"

output=$(g++ --std=c++17 -Wall -Wextra $PROG_NAME 2>&1)
if [[ $? != 0 ]]; then
	# There was an error, display the error in $output
	echo -e "Error:\n$output"
else
	# Compilation successfull
	echo -n "Input file, press ENTER if not have any : "
	read input

	if
		[[ -z "$input" ]]
	then
		./a.out
	else
		./a.out <$input
	fi
fi

# source: https://stackoverflow.com/questions/59768931/bash-script-to-compile-and-run-c-program
