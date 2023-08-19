#!/bin/bash

# Killing old container

containerid=$(docker ps -q) 
docker rm -f $containerid
