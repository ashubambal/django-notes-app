#!/bin/bash

echo "docker container running"
docker pull softconsist/django-notes-app
docker run -d -p 8000:8000 softconsist/django-notes-app