#!/bin/bash

# This script will check for permissiones on sensitive file paths

# This creates the list
# List of sentistive files an paths
files=('/etc/passwd' '/etc/shadow' '/etc/hosts')

# For loop that interates over the files list
for file in ${files[@]}; do
	# shows permissions for each file in the list
	ls -l $file
done

# end program

############ Bonus 1 ############

# check sudo abilties for each user with home dir
for user in $(ls /home); do
	sudo -lU $user
done


############ Bonus 2 ############

commands=('date' 'uname -a' 'hostname' -s)

for x in {0..2}
do
	results=$(${commands[x]})
	echo "Results of \"${commands[$x]}\" command:"
	echo $results
	echo ""
done
