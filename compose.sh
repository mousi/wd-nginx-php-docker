#!/bin/sh
set -e
[ -f ./env.sh ] && source ./env.sh

create_net () {
  NET=$1      
  DRIVER=$2                                 
  echo -n "Creating network ${NET}... " && ((docker network create --driver ${DRIVER} ${NET} > /dev/null 2>&1 && echo "Network ${NET} created successfully") || echo "${NET} already exists, skipping!")
}

# Create the network if it doesn't exist
create_net ${DOCKER_NETWORK:-nginxnet} ${DOCKER_NETWORK_DRIVER:-bridge}
docker-compose "$@"
