echo "This step will create a new Lightsail instance in your account"
echo "Type the name of your instance:"
read INSTANCE_NAME
aws lightsail create-instances --instance-names $INSTANCE_NAME --availability-zone eu-west-1a --blueprint-id mean --bundle-id micro_2_0
echo ""
echo ""
echo ""
echo "Run the following command before proceeding to next steps:"
echo ""
echo "export INSTANCE_NAME='$INSTANCE_NAME'"