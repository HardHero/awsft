

#instanceId=`aws ec2 describe-instances| jq '.Reseions[].Instances[].InstanceId'`
aws ec2 describe-instances|jq '.Reservations[].Instances[].InstanceId'
exit
InstanceID=$qInstanceID #| cut -d'"' -f 0
echo $InstanceID
aws ec2 terminate-instances --instance-id $InstanceID


