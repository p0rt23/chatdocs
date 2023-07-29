FROM python:3-slim-bookworm

RUN apt-get update && apt-get install -y \
  build-essential

WORKDIR /app
COPY chatdocs/ chatdocs/
COPY setup.py .

RUN --mount=type=cache,target=/root/.cache \
  pip install chatdocs 

ENTRYPOINT chatdocs download && chatdocs add /app/docs && chatdocs chat
