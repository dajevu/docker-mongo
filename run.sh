#!/bin/bash

echo `env`

git pull

# start mongo db
nohup mongod --rest --httpinterface --smallfiles &

# wait for mongo to load
sleep 30

cd /local/git/docker-mongo
git pull

# load demo data
cd /local/git/docker-mongo/northwind-mongo-master/
./mongo-import.sh
