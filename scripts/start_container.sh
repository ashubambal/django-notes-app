#!/bin/bash

# Pulling the docker container from DockerHub
#docker pull softconsist/django-notes-app

# Run the docker image as a container
#docker run -d -p 8000:8000 softconsist/django-notes-app

# Generate a timestamp in the format YYYY-MM-DD-HHMMSS
timestamp=$(date +%Y%m%d%H%M%S)

# Define the Docker image name and tag
docker_image="softconsist/django-notes-app"
docker_tag="$docker_image:$timestamp"

# Pulling the docker container from DockerHub
docker pull "$docker_image"

# Run the docker image as a container
docker run -d -p 8000:8000 "$docker_tag"
