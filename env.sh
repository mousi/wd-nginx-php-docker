#!/bin/sh
export WEB_ROOT=/ # Will be attached to /var/www, pages in there will be served by nginx
export BOOKS_DIR=/ # The path to your calibre directory (inside the NAS)
export TIMEZONE=Europe/London # Change this to your timezone
export DOCKER_NETWORK=nginxnet  # Optional: The name of the docker network for nginx and php containers
export DOCKER_NETWORK_DRIVER=bridge  # Optional: The driver to use for the above network
