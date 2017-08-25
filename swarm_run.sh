#!/usr/bin/env bash

docker build -t xgboost-model-api .

docker swarm init
docker stack deploy --compose-file compose.yml xgboost-swarm
