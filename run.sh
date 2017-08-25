#!/usr/bin/env bash
docker build -t xgboost-model-api .

docker run -p 5000:5000 xgboost-model-api
