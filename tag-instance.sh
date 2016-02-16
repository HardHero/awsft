newinstance=`cat awsft.json`| jq '.Reservations[].Instances[].InstanceId'
instanceName="Icarus"$(shuf -i1-1000 -n1)
aws ec2 create-tags --resources 'i-9efba41e'  --tags Key=Name,Value="$instanceName"

