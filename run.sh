#!/bin/bash

echo 'start sandbox tests'
docker run --rm --name mongo-sandbox -d mongo:latest
sleep 3s
ruby main.rb || true
docker rm -f mongo-sandbox || true
echo 'finish sandbox tests'
