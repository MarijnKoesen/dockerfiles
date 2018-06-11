#docker build -t marijnkoesen/ansible-lint:v3.4.21 -f Dockerfile .
docker push marijnkoesen/ansible-lint:v3.4.21

docker tag marijnkoesen/ansible-lint:v3.4.21 marijnkoesen/ansible-lint:latest
docker push marijnkoesen/ansible-lint:latest
