---
title: AWS cli IAM roles and tokens
summary: AWS IAM roles and tokens
authors:
    - Antonio Feijao UK
date: 2019-05-22
site_url: https://www.antoniocloud/
base_url: /aws/
---

```bash

aws sts assume-role --role-arn arn:aws:iam::ACCOUNT-NUMBER:role/ROLE-NAME --role-session-name "RoleSession1" | \
sed 's/[," :]//g;s/AccessKeyId/export AWS_ACCESS_KEY_ID=/;s/SessionToken/export AWS_SECURITY_TOKEN=/;s/SecretAccessKey/export AWS_SECRET_ACCESS_KEY=/' | \
grep 'export' | \
tee credentials.properties

export AWS_ACCESS_KEY_ID=xxxxxxxxxxx
export AWS_SECURITY_TOKEN=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
export AWS_SECRET_ACCESS_KEY=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

```
