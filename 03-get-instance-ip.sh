echo ""
echo "Your instance is "
aws lightsail get-instance --instance-name $INSTANCE_NAME | jq '.instance.state.name' -r
echo "Your instance public ip address: "
export IP_ADDRESS=$(aws lightsail get-instance --instance-name $INSTANCE_NAME | jq '.instance.publicIpAddress' -r)
echo $IP_ADDRESS

echo ""
echo ""
echo "You can open http://$IP_ADDRESS in your browser to see the running application"

echo ""
echo "Run the following command before proceeding to next steps:"
echo "export INSTANCE_IP='$IP_ADDRESS'"