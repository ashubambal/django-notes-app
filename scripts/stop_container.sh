#!/bin/bash

# Killing old container y

containerid=$(docker ps -q) 
docker rm -f $containerid
