
#Pulls instance-ID from awsft.json
newinstance=$(echo $(cat awsft.json| jq '.Instances[].InstanceId'|cut -d'"' -f2))
#Generates nametag to assign to instance
nameTag="awsft"$(shuf -i1-1000 -n1)
#Creates tag
aws ec2 create-tags --resources $newinstance --tags Key=Name,Value="$nameTag"

