#!/bin/bash

####################
# Author : Jatin Motwani 
# Date : 29th March 2023
# Description : This script monitors aws resources for us like s3, ec2, lambda and iam
####################

set -x #debug flag

# Create a backup file
filename="/home/ubuntu/aws-report-$(date +%Y-%m-%d).txt"

touch $filename

# List Aws s3 buckets
aws s3 ls >> $filename

# List ec2 instances
aws ec2 describe-instances | grep "InstanceId" >> $filename

# List lambda functions 
aws lambda list-functions >> $filename

# List iam users
aws iam list-users >> $filename
