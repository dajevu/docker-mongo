# Build (or rebuild) using
# docker build -t="jeffdavisco/mongodb:latest" .

# Pull base image.
FROM dockerfile/ubuntu

# Install MongoDB.
RUN \
  apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10 && \
  echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' > /etc/apt/sources.list.d/mongodb.list && \
  apt-get update && \
  apt-get install -y mongodb-org vim wget curl git && \
  rm -rf /var/lib/apt/lists/*

# Define mountable directories.
VOLUME ["/data/db"]

VOLUME /volume/git

# create working directory
RUN mkdir -p /local/git
WORKDIR /local/git/

# Install the test webapp
RUN git clone https://github.com/dajevu/docker-mongo
WORKDIR /local/git/docker-mongo

# Define working directory.
WORKDIR /data

# Define default command.
#CMD ["mongod"]

RUN chmod +x /local/git/docker-mongo/run.sh
RUN chmod +x /local/git/docker-mongo//northwind-mongo-master/


# Expose ports.
#   - 27017: process
#   - 28017: http
EXPOSE 27017
EXPOSE 28017
