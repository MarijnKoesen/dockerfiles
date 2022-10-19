docker build -t marijnkoesen/ansible-lint:v4.1.0 -f Dockerfile .
docker push marijnkoesen/ansible-lint:v4.1.0

docker tag marijnkoesen/ansible-lint:v4.1.0 marijnkoesen/ansible-lint:latest
docker push marijnkoesen/ansible-lint:latest
