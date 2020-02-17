#!/bin/bash

docker run --rm --name mongo-sandbox -d mongo:latest
sleep 5s
ruby main.rb
docker rm -f mongo-sandbox
