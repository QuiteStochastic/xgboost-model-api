#!/usr/bin/env bash

sudo yum update -y
sudo yum upgrade -y


sudo yum install docker -y
sudo groupadd docker
sudo usermod -aG docker $USER

sudo service docker start
sudo service docker stop
sudo dockerd --experimental &



sudo yum install git -y

git clone https://github.com/QuiteStochastic/xgboost-model-api.git


##at this point one must exist from the bash shell and re-enter, or else the groupadd command will not take effect


cd xgboost-model-api
docker build -t xgboost-model-api .


#----------------------------------------------------------------------


#docker rm -f $(docker ps -a -q)


#---------------------------------------------------------------------

#docker swarm join --token SWMTKN-1-5lvijtjxb90j3cnkbsrvrtr1cxpsfjje4g04x79crr8m9bnvo1-3tocqifqfmnn2a4qm4asc8m1h 10.0.155.24:2377


