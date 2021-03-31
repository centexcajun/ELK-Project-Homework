#!/bin/bash

# Clear the screen
clear

# Declare variables
nums=($echo {0..9});
states=('Nebraska' 'California' 'Texas' 'Hawaii' 'Washington')
ls_out=$(ls)
execs=$(find /home -type f -perm 777 2> /dev/null)

# Create for loops
# Crate a loop that looks for 'Hawaii'
for state in ${states[@]};
do
	if [ $state == 'Hawaii' ];
	then
		echo "Hawaii is the best!"
	else
		echo "I am not a fan of $state."
	fi
done
echo

# Create Loop that prints 3, 5, 7
for num in ${nums[@]}
do
	if [ $num == 3 ] || [ $num == 5 ] || [ $num == 7 ]
	then
		echo $num
	fi
done
echo
