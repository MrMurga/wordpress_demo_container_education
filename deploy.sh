SERVICE=${TODO:service_name}

echo "SERVICE=$SERVICE. Continue?"
read -n 1 k <&1

echo "Pushing deploy to lightsail. Make sure image version is correct."
./lightsail/deploy.sh $SERVICE

echo "Done."
