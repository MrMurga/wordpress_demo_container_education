SERVICE=${TODO:service_name}
CWD=$PWD

echo "SERVICE=$SERVICE. Continue?"
read -n 1 k <&1

echo "Create lightsail service?. Continue?"
read -n 1 k <&1
./lightsail/create.sh $SERVICE

echo "Building docker images. Continue?"
read -n 1 k <&1

cd docker
docker image build . -f images/wordpress/Dockerfile -t wordpress-demo-education-wordpress:latest
docker image build . -f images/db/Dockerfile -t wordpress-demo-education-db:latest
cd $CWD

echo "Pushing images to lightsail. Continue?"
read -n 1 k <&1
./lightsail/push_image.sh $SERVICE wordpress-demo-education-wordpress latest
./lightsail/push_image.sh $SERVICE wordpress-demo-education-db latest

echo "Done."
