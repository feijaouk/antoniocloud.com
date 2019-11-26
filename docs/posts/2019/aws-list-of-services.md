---
title: AWS list of services in command line
summary: AWS list of services in command line
authors:
    - Antonio Feijao UK
date: 2019-01-31
site_url: https://www.antoniocloud/
base_url: /aws/
---

`curl https://awspolicygen.s3.amazonaws.com/js/policies.js | sed '1s/[^=]*=//' | jq '[.serviceMap[].StringPrefix]' |
grep \" | sed 's/\"//g' | sort | uniq`

