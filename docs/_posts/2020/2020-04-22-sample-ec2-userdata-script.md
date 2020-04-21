---
title: AWS EC2 userdata sample script
date: 2020-04-121
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



```bash

#!/bin/bash

yum update -y

yum install -y httpd

systemctl start httpd
systemctl enable httpd

usermod -a -G apache ec2-user
chown -R ec2-user:apache /var/www

chmod 2775 /var/www
find /var/www -type d -exec chmod 2775 {} \;
find /var/www -type f -exec chmod 0664 {} \;


INSTANCE_INFO=$(curl -s http://169.254.169.254/latest/dynamic/instance-identity/document)

INSTANCE_ID=$(printf "$INSTANCE_INFO" |  grep instanceId | awk '{print $3}' | sed s/','//g | sed s/'"'//g)

INSTANCE_AZ=$(printf "$INSTANCE_INFO" |  grep availabilityZone | awk '{print $3}' | sed s/','//g | sed s/'"'//g)

INSTANCE_TYPE=$(printf "$INSTANCE_INFO" |  grep instanceType | awk '{print $3}' | sed s/','//g | sed s/'"'//g)

INSTANCE_REGION=$(printf "$INSTANCE_INFO" |  grep region | awk '{print $3}' | sed s/','//g | sed s/'"'//g)


### index.html landing page

cat <<EOF >> /var/www/html/index.html
<!DOCTYPE html>
<html>
<title>MY AWS instance</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<body>

<div class="w3-container w3-teal">
  <h1>My Linux Server</h1>
  <h1>${INSTANCE_ID}</h1>
  <h2>${INSTANCE_AZ}</h2>
  <h2>${INSTANCE_TYPE}</h2>
  <h2>${INSTANCE_REGION}</h2>
  
</div>


</body>
</html> 
EOF
```


If you tried it and helped you understsand better how it works, please leave a comment.


Happy learnings,

Antonio
