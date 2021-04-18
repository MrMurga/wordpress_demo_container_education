SERVICE=$1
IMAGE=$2
VERSION=$3

echo "Launching service = $SERVICE $IMAGE:$VERSION"
aws lightsail push-container-image --region us-west-2 --service-name $SERVICE --label $IMAGE --image $IMAGE:$VERSION

