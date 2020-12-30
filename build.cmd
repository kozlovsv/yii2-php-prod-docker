DOCKER_PASS=
DOCKER_USER=
IMAGE_TAG="7.4-fpm"
IMAGE_NAME="kozlovsv78/yii2-php-production"
docker build -t $IMAGE_NAME --build-arg PHP_BASE_IMAGE_VERSION=$IMAGE_TAG .
echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
docker tag $IMAGE_NAME:latest $IMAGE_NAME:$IMAGE_TAG
docker push $IMAGE_NAME:latest
docker push $IMAGE_NAME:$IMAGE_TAG