repository=$1

cd ./java/8/ && docker buildx build --push -t ghcr.io/$repository:java_8 . && cd - || exit
cd ./java/11/ && docker buildx build --push -t ghcr.io/$repository:java_11 . && cd - || exit
cd ./java/16/ && docker buildx build --push -t ghcr.io/$repository:java_16 . && cd - || exit
cd ./java/17/ && docker buildx build --push -t ghcr.io/$repository:java_17 . && cd - || exit
cd ./java/21/ && docker buildx build --push -t ghcr.io/$repository:java_21 . && cd - || exit
