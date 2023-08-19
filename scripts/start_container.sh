#!/bin/bash

# Pulling the docker container from DockerHub
docker pull softconsist/django-notes-app:latest

# Run the docker image as a container
docker run -d -p 8000:8000 softconsist/django-notes-app:latest
