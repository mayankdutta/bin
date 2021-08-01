#!/bin/bash
echo "" >~/time.out
printf "1. vim \n2. nvim \n3. lvim\n"
read option

if [ $option == 1 ]; then
	input="vim"
elif [ $option == 2 ]; then
	input="nvim"
elif [ $option == 3 ]; then
	input="lvim"
fi

for i in {1..50}; do
	echo "____$i times out of 50"
	$input --startuptime ~/time.out +q
done

lvim ~/time.out
