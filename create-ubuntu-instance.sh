
aws ec2 run-instances --image-id ami-fce3c696 --count 1 --instance-type t2.micro --key-name hardhero-aws --security-groups hardhero-sg

sleep 10

aws ec2 describe-instances|jq '.Reservations[].Instances[].InstanceId' > .free-tier-instance-id

