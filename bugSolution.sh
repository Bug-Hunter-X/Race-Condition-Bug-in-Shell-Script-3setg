#!/bin/bash

# This script demonstrates a solution to the race condition bug using flock.

# Create two files
touch file1.txt
touch file2.txt

# Use flock to acquire a lock on each file before writing
flock file1.txt; echo "Process 1 writing to file1" > file1.txt; flock -u
flock file2.txt; echo "Process 2 writing to file2" > file2.txt; flock -u

# Check the content of the files
cat file1.txt
cat file2.txt