# Race Condition Bug in Shell Script

This repository demonstrates a race condition bug in a shell script.  Two processes concurrently write to files, resulting in unpredictable file content. The solution demonstrates how to avoid this using file locking.

## Bug Description

The `bug.sh` script creates two files and then launches two background processes. Each process writes a message to a different file.  Because the processes run concurrently, the order of writes is not guaranteed, potentially leading to incomplete or corrupted file content. 

## Solution

The `bugSolution.sh` script addresses this by using file locking to ensure that only one process can write to a file at a time. This prevents the race condition and ensures predictable output.