SERVICE=$1

echo "SERVICE=$SERVICE. You will delete this service with the following configuration:"
cat lightsail/conf/lc.json

aws lightsail delete-container-service --service $SERVICE

