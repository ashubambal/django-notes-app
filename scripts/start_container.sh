#!/bin/bash

echo "docker container running"
docker pull softconsist/django-notes-app:tagname
docker run -d -p 8000:8000 softconsist/django-notes-app:tagname