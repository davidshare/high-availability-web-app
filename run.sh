#!/bin/bash

if [[ "${1}" == "validate" ]]
then
  aws cloudformation validate-template --template-body file://$2
elif [[ "${1}" == "create" ]]
then
  aws cloudformation create-stack --stack-name $2 --template-body file://$3  --parameters file://$4 --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --region=us-east-1
elif [[ "${1}" == "update" ]]
then
  aws cloudformation update-stack --stack-name $3 --template-body file://$3  --parameters file://$4 --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --region=us-east-1
elif [[ "${1}" == "delete" ]]
then
  aws cloudformation delete-stack --stack-name $2
fi
