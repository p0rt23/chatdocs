#!/bin/bash

docker run --rm -it -v chatdocs-db:/app/db -v chatdocs-cache:/root/.cache --name chatdocs p0rt23/chatdocs
