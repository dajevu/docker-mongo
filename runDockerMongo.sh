# The following can be used if you want to utilize local docker host storage (i.e., makes mongoDb persist through restarts).
##docker run -t -d -p 27017:27017 -p 28017:28017  -v /data/db:/data/db --name mongodb dockerfile/mongodb mongod --rest --httpinterface --smallfiles

docker run -t -d -p 27017:27017 -p 28017:28017 --name mongodb dockerfile/mongodb mongod --rest --httpinterface --smallfiles

