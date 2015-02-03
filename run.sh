#!/bin/bash

echo `env`

git pull

# start mongo db
nohup mongod &

# wait for mongo to load
sleep 30

# load demo data
cd /local/git/docker-mongo/northwind-mongo-master/
./mongo-import.sh
