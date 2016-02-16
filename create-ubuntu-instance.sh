

aws ec2 run-instances --image-id ami-fce3c696 --count 1 --instance-type t2.micro --key-name hardhero-aws --security-groups hardhero-sg > ./awsft.json

sleep 10
newInstance=`cat awsft.json|jq '.Reservations[].Instances[].InstanceId'`
instanceName= "Icarus"$(shuf -i1-1000 -n1) 
aws ec2 create-tags --resources $newInstance --tags Key=Name,Value="$instanceName"

sleep 10



