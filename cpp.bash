#!bin/bash
# https://stackoverflow.com/questions/59768931/bash-script-to-compile-and-run-c-program

echo Enter fileName:
read PROG_NAME
PROG_NAME="$PROG_NAME.cpp"

output=$(g++ --std=c++17 -Wall -Wextra $PROG_NAME 2>&1)
if [[ $? != 0 ]]; then
	# There was an error, display the error in $output
	echo -e "Error:\n$output"
else
	# Compilation successfull
	./a.out <in
fi
