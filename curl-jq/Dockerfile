FROM alpine:3.16

MAINTAINER Marijn Koesen <dockerhub@koesen.nl>

RUN apk update \
 && apk add --no-cache curl jq bash git coreutils zip \
 && rm /var/cache/apk/*

CMD ["bash"]
