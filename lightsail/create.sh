SERVICE=$1

echo "SERVICE=$SERVICE. You will create this service with the following configuration:"
cat lightsail/conf/lc.json

aws lightsail create-container-service --service-name $SERVICE --power micro --scale 1

