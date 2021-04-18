SERVICE=$1

echo "SERVICE=$SERVICE. You will deploy this service with the following configuration:"
cat lightsail/conf/lc.json

aws lightsail create-container-service-deployment --cli-input-json file://lightsail/conf/lc.json
