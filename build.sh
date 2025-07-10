repository=firecone-group/docker

docker buildx build --push -t ghcr.io/$repository:java_8 -f ./java/8/Dockerfile ./java/ || exit
docker buildx build --push -t ghcr.io/$repository:java_11 -f ./java/11/Dockerfile ./java/ || exit
docker buildx build --push -t ghcr.io/$repository:java_16 -f ./java/16/Dockerfile ./java/ || exit
docker buildx build --push -t ghcr.io/$repository:java_17 -f ./java/17/Dockerfile ./java/ || exit
docker buildx build --push -t ghcr.io/$repository:java_21 -f ./java/21/Dockerfile ./java/ || exit
