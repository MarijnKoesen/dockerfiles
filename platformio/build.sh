docker buildx build \
  --platform linux/amd64,linux/arm64 \
  -t marijnkoesen/platformio:6.1.19 \
  -f Dockerfile-6.1.19 \
  --push .

docker tag marijnkoesen/platformio:6.1.19 marijnkoesen/platformio:latest
docker push marijnkoesen/platformio:6.1.19
docker push marijnkoesen/platformio:latest
