#docker buildx build --platform linux/amd64,linux/arm64 -t marijnkoesen/kaniko-git-lfs:v1.22.0-debug -f Dockerfile .
#docker push marijnkoesen/kaniko-git-lfs:v1.22.0-debug

docker buildx build --platform linux/arm64 -t marijnkoesen/kaniko-git-lfs:v1.22.0-debug -f Dockerfile .
