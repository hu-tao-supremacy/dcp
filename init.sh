cd $(dirname $0)
git submodule update --init
docker-compose -p "hts" -f ./docker-compose.postgres.yaml up -d
sh ./wait-for-postgres.sh localhost
(cd ./migrations && make sync)
docker-compose -p "hts" -f ./docker-compose.prod.yaml up -d
