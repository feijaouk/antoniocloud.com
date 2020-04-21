---
title: AWS EC2 userdata sample script
date: 2020-04-21
last_modified_at: 2020-04-21
categories:
    - AWS
    - Linux
    - Bash
tags:
    - shell
    - bash
    - aws
    - ec2
    - script
---

Sample of an AWS EC2 `userdata` script that install `apache` and automatically creates an `index.html` file as a landing webpage with information about the instance - `instanceId`, `availabilityZone`, `instanceType` and `region`. This could also be used with [launch configuration](https://docs.aws.amazon.com/autoscaling/ec2/userguide/LaunchConfiguration.html) on an [Auto Scaling Group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/AutoScalingGroup.html) (`ASG`) to use as multiple instance on [Elastic Load Balancing load balancer](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-register-lbs-with-asg.html) (`ALB`) to easy show the usage of multiple instances behind the load balancer.


<style type="text/css" href="https://gist.github.com/AntonioFeijaoUK/08b06fc625516d78fb5c77001f0ebffa">
</style>

<script src="https://gist.github.com/AntonioFeijaoUK/d8533a71e5ecff2971f6859a7be426da.js"></script>


Other samples on [AWS](https://aws.amazon.com)

- Sample EC2 with webserver - <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html>

- SAmple EC2 metadata - <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-identity-documents.html>




If you tried it and helped you understand better how it works, please leave a comment.


Happy learnings,

Antonio
