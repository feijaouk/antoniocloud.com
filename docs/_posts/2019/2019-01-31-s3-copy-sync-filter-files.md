---
layout: post
title: S3 cp sync exclude include
summary: S3 cp sync exclude include
authors:
    - Antonio Feijao UK
date: 2019-01-31
site_url: https://www.antoniocloud/
base_url: /aws/
---



`aws s3 sync /var/log/ s3://{MYBUCKET-NAME}/ --recursive --exclude "*" --include "{MY-log-files-name}*"`

`aws s3 sync /var/log/ s3://{MYBUCKET-NAME}/ --exclude "*" --include "{MY-log-files-name}*"`
