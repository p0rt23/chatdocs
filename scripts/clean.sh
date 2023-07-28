#!/bin/bash

docker volume rm chatdocs-db || true
docker volume rm chatdocs-cache || true
docker system prune -af
