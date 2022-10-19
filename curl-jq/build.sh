docker build -t marijnkoesen/curl-jq:latest -f Dockerfile .
docker tag marijnkoesen/curl-jq:latest
docker push marijnkoesen/curl-jq:latest
