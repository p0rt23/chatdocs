#!/bin/bash

docker run --rm -it \
	-v chatdocs-db:/app/db \
	-v chatdocs-cache:/root/.cache \
	-v ~/.chatdocs:/app/docs \
	--cpus=4 \
	--memory=32g \
	--shm-size=4g \
	--name chatdocs \
	p0rt23/chatdocs
