#!/bin/bash

echo `env`

cd /local/git/docker-mongo
git pull

# start mongo db
mongod --rest --httpinterface --smallfiles

