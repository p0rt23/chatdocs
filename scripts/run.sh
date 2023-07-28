#!/bin/bash

docker run --rm -it \
	-v chatdocs-db:/app/db \
	-v chatdocs-cache:/root/.cache \
	--cpus=4 \
	--memory=32g \
	--name chatdocs \
	p0rt23/chatdocs
