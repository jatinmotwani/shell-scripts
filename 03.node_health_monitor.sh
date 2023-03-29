#!/bin/bash 

####################
# Author : Jatin Motwani
# Date : 29th March 2023
# Description : This script helps us monitor the health of a server
#################### 

set -x #debug flag 
set -e #exits on error
set -o #exits on pipe errors

# List memory usage 
free -m

# List disk usage
df -h

# List number of processing units available
nproc 

# List the  process ids of processes that are of amazon
ps -ef | grep "amazon" | awk -F" " '{print$2}'
