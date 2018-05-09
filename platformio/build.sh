docker build -t marijnkoesen/platformio:3.5.2 -f Dockerfile-3.5.2 .
docker tag marijnkoesen/platformio:3.5.2 marijnkoesen/platformio:latest
docker push marijnkoesen/platformio:3.5.2
docker push marijnkoesen/platformio:latest
