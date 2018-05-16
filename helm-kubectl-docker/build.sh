docker build -t marijnkoesen/helm-kubectl-docker:v194_v290 -f Dockerfile .
docker tag marijnkoesen/helm-kubectl-docker:v194_v290 marijnkoesen/helm-kubectl-docker:latest
docker push marijnkoesen/helm-kubectl-docker:v194_v290
docker push marijnkoesen/helm-kubectl-docker:latest
