#!/bin/bash

echo `env`

cd /local/git/docker-mongo
git pull

# start mongo db
mongod --fork --logpath /tmp/mongodb.log --rest --httpinterface --smallfiles

# wait for mongo to load
#sleep 30

# load demo data
#cd /local/git/docker-mongo/northwind-mongo-master/
#./mongo-import.sh
