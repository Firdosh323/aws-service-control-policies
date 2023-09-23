#!/bin/bash 

echo "Creating new Service Control Policy 'scp_root_account'"
policyId=$(aws organizations create-policy \
 --name "scp_root_account" \
 --description "This SCP prevents restricts the root user in an AWS account from taking any action, either directly as a command or through the console. " \
 --type "SERVICE_CONTROL_POLICY" \
 --content '{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "*",
            "Resource": "*",
            "Effect": "Deny",
            "Condition": {
                "StringLike": {
                    "aws:PrincipalArn": [
                        "arn:aws:iam::*:root"
                    ]
                }
            }
        }
    ]
}' \
 --region "us-east-1" --query "Policy.PolicySummary.Id" --output=text)

