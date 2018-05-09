docker build -t marijnkoesen/php:7.1-alpine -f Dockerfile.7.1-alpine .
docker push marijnkoesen/php:7.1-alpine

docker build -t marijnkoesen/php:7.1-alpine-composer -f Dockerfile.7.1-alpine-composer .
docker push marijnkoesen/php:7.1-alpine-composer

docker build -t marijnkoesen/php:7.1-alpine-composer-gd -f Dockerfile.7.1-alpine-composer-gd .
docker push marijnkoesen/php:7.1-alpine-composer-gd
