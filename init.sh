cd $(dirname $0)
docker-compose -f ./docker-compose.postgres.yaml up -d --project-name "hu-tao-supremacy"
cd ./migrations && make sync
docker-compose -f ./docker-compose.prod.yaml up -d --project-name "hu-tao-supremacy"
