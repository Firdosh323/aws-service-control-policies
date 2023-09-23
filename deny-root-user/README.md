# AWS Policy to Deny Root User Access

## Introduction

This repository contains an AWS Identity and Access Management (IAM) policy written in AWS policy language. The purpose of this policy is to restrict the use of the root user in an aws account."

## Policy Details

- **Version:** 2012-10-17
- **Statement:**
  - **Sid:** DenyRootUser
  - **Effect:** Deny
  - **Action:** *
  - **Resource:** *
  - **Condition:**
    - **StringLike:**
      - **aws:PrincipalArn:** arn:aws:iam::*:root

## Explanation

This IAM policy is designed to enforce strict access control for the root user in an AWS account. Here's a simple breakdown of what each part of the policy does:

- **Version:** Specifies the version of the policy language being used.

- **Statement:** Defines the access control rule.

- **Sid:** A user-friendly name for the rule, indicating its purpose.

- **Effect:** Specifies that access should be "Deny" when the conditions are met.

- **Action:** Denies permission for any AWS action or operation.

- **Resource:** Denies access to any AWS resource.

- **Condition:** Allows setting conditions for when the policy should be enforced.

- **StringLike:** A condition operator that checks if a string matches a pattern.

- **aws:PrincipalArn:** The condition key that checks the Amazon Resource Name (ARN) of the principal making the request.

- **arn:aws:iam::*:root:** The value that the ARN should match; it effectively denies access if the request is made by the root user.

## Purpose

This policy serves as a crucial security measure to restrict the most powerful user in an AWS account, the root user, from performing any actions. It helps ensure the security of the AWS account by preventing accidental or malicious changes to AWS resources.

---

Feel free to use or adapt this policy in your AWS environment to enhance security and access control. If you have any questions or need further assistance, please don't hesitate to reach out.
