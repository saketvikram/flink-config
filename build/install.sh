# stop and remove previous container
docker stop sb-dp-flink-build && docker rm sb-dp-flink-build
# build the image
docker build -t sb-dp-flink-build-image:1.1 .
# run container
docker run -v "$(pwd)"/dist:/dist --name=sb-dp-flink-build sb-dp-flink-build-image:1.1

docker stop sb-dp-flink-build && docker rm sb-dp-flink-build