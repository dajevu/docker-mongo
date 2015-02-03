#!/bin/bash

echo `env`

git pull

# start mongo db
mongod &

# load demo data
/local/git/docker-mongo//northwind-mongo-master//mongo-import.sh
