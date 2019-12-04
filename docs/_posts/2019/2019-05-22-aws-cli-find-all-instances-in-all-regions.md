---
title: AWS cli find all ec2 instances in all aws regions
summary: AWS cli find all ec2 instances in all aws regions
authors:
    - Antonio Feijao UK
date: 2019-05-22
site_url: https://www.antoniocloud/
base_url: /
categories: [blog]
tags: [aws, ec2, command-line]
---

Lists all ec2 instances in all regions including account owner, instance id, instance type, statues and region.

```bash

for region in `aws ec2 describe-regions --output text | cut -f3`; do
    echo -e "\nInstances in: '$region':";
    aws ec2 describe-instances --query 'Reservations[*].Instances[*].[NetworkInterfaces[0].OwnerId, Placement.AvailabilityZone, VpcId, InstanceId, InstanceType, State.Name]' --output text --region ${region};
done;

```
