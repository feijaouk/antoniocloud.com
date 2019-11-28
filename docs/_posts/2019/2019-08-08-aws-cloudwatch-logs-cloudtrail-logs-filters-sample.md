---
layout: post
summary: AWS CloudWatch logs CloudTrail logs and filters examples
authors:
    - Antonio Feijao UK
date: 2019-08-08
site_url: https://www.antoniocloud/
base_url: /antoniocloud/
---

AWS CloudWatch logs CloudTrail logs and filters examples


Official Documentations - <https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html>

## Basic sample VPC-flow-logs

- `[version, account, eni, source, destination, srcport, destport="8000", protocol, packets, bytes, windowstart, windowend, action, flowlogstatus]`

## Basic Expressions Operators

`=`     -- EQUAL

`!=`    -- NOT EQUAL

`<`     -- SMALL THAN

`>`     -- GRATER THEN

`<=`    -- SMALL OR EQUAL

`>=`    -- GRATER OR EQUAL

`&&`    -- ABD

`||`    -- OR

## Cloud Trail Logs Filter examples

- filter by Failure Console Logins  'ConsoleLogin="Failure"'

`{ $.eventSource = "signin.amazonaws.com" && $.responseElements.ConsoleLogin = "Failure" }`

- exclude know IP address

`{ ($.sourceIPAddress != "52.123.123.5") && ($.sourceIPAddress != "33.123.123.*") && ($.sourceIPAddress != "*.amazonaws.com") }`

- AWS login without using MFA

`{ $.eventSource="signin.amazonaws.com" && $.additionalEventData.MFAUsed="No" }`
