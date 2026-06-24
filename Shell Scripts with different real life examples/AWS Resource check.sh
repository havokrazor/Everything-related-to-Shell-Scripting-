#!/bin/bash

# AWS s3
# AWS EC2
# AWS Lambda
# AWS IAM User

#list s3 buckets

echo "print list of buckets"

aws s3 ls

# list EC2 instances

echo "print list of EC2 instances"

aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list lambda

echo "print list of lambda functions"

aws lambda list-functions 

# list IAM users

echo "print the list of list of lambda functions"

aws iam list-users
