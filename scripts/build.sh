#!/bin/bash

cd ..
docker build . -t p0rt23/chatdocs && docker image prune -f
