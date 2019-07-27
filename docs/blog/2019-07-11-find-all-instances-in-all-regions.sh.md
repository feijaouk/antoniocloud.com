# AWS all instances in all regions

!!! tip
    ```for region in `aws ec2 describe-regions --output text | cut -f3`; do echo -e "\nInstances in: '$region':"; aws ec2 describe-instances --query 'Reservations[*].Instances[*].InstanceId' --output text --region $region; done;```

Above, it's multiple commands in one line.

```bash

for region in `aws ec2 describe-regions --output text | cut -f3`; do
    echo -e "\nInstances in: '$region':";
    aws ec2 describe-instances --query 'Reservations[*].Instances[*].InstanceId' --output text --region $region;
done;

```