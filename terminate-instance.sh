

#instanceId=`aws ec2 describe-instances| jq '.Reservations[].Instances[].InstanceId'`

aws ec2 terminate-instances --instance-id i-f895b84b


