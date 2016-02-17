
InstanceID=$(echo $(cat awsft.json| jq '.Instances[].InstanceId'|cut -d'"' -f2))
echo $InstanceID
aws ec2 terminate-instances --instance-id $InstanceID


