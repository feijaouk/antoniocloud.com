

for region in `aws ec2 describe-regions --output text | cut -f3`; do echo -e "\nInstances in: '$region':"; aws ec2 describe-instances --query 'Reservations[*].Instances[*].InstanceId' --output text --region $region; done;


