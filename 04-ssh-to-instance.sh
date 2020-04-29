aws lightsail download-default-key-pair | jq '.privateKeyBase64' -r > private.key
chmod 0400 private.key
ssh -i private.key ubuntu@$INSTANCE_IP