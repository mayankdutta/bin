#!bin/bash
for ((i = 0; i < 50; i++)); do
	echo "____$i times"
	lvim --startuptime timing2.out +q
done
