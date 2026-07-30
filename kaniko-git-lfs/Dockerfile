FROM gcr.io/kaniko-project/executor:v1.22.0-debug AS kaniko
FROM alpine/git

ARG LFS_VERSION=3.5.1
ARG LFS_DOWNLOAD_URL=https://github.com/git-lfs/git-lfs/releases/download/v${LFS_VERSION}/git-lfs-linux-amd64-v${LFS_VERSION}.tar.gz
ARG LFS_DOWNLOAD_SHA256=6f28eb19faa7a968882dca190d92adc82493378b933958d67ceaeb9ebe4d731e

RUN apk add --no-cache curl \
	&& cd /tmp \
	&& curl -fsSL "${LFS_DOWNLOAD_URL}" -o git-lfs.tar.gz \
	&& echo "${LFS_DOWNLOAD_SHA256} git-lfs.tar.gz" | sha256sum -c - \
	&& tar -xzf git-lfs.tar.gz \
	&& ls -lR \
	&& cp "git-lfs-${LFS_VERSION}/git-lfs" /usr/local/bin/ \
	&& cd / \
	&& rm -rf /tmp \
	&& git lfs --version

COPY --from=kaniko /kaniko/executor /kaniko/

ENTRYPOINT ["/kaniko/executor"]
