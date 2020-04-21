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

Sample of an AWS EC2 `userdata` script that install `apache` and automaticaclly creates an `index.html` file as a landing webpage with information about the instance - instanceId, availabilityZone, instanceType, region. This could also be used with `lunch configuration` on an `ALB` to easy show the usage of multiple instances behind the load balancer.
  

EC2 with webserver - <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html>

EC2 metadata - <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-identity-documents.html>


<script src="https://gist.github.com/AntonioFeijaoUK/d8533a71e5ecff2971f6859a7be426da.js"></script>



If you tried it and helped you understand better how it works, please leave a comment.


Happy learnings,

Antonio
