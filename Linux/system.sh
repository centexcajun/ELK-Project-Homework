#!/bin/bash

# Set variables
# Set a variable for the parent output directory
output='backups'

# Prints the amount of free memory on the system and saves it to a file.
free -h > $output/freemem/free_mem.txt

# Prints disk usage and saves it to a file.
du -h > $output/diskuse/disk_usage.txt

# The instructions state that the following warning can be ignored.
# WARNING: can't stat() fuse.gvfsd-fuse file system /run/user/1001/gvfs Output information may be incomplete.
# I chose to add "-e /run/user/1000/gvfs" rather than ignore the warning.

# Lists all open files and saves it to a file.
lsof -e /run/user/1000/gvfs /dev/null > $output/openlist/open_list.txt

# Prints file system disk space statistics and saves it to a file.
df -h > $output/freedisk/free_disk.txt
