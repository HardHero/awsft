

#instanceId=`aws ec2 describe-instances| jq '.Reservations[].Instances[].InstanceId'`
qInstanceID=$(cat awsft.json|jq '.Reservations[].Instances[].InstanceId')
InstanceID=$(cut -c1 $qInstance)
 
 
aws ec2 terminate-instances --instance-id $InstanceID


