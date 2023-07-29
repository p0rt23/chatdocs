FROM python:3-slim-bookworm
ENV PYTHONUNBUFFERED = 1

RUN apt-get update && apt-get install -y \
  build-essential \
  libreoffice-writer \
  libreoffice-java-common

WORKDIR /app

# Setup python3 venv
RUN python3 -m venv /app/env 
ENV VIRTUAL_ENV /app/env
ENV PATH /app/env/bin:$PATH

COPY chatdocs/ chatdocs/
COPY setup.py .
COPY chatdocs.yml .

RUN --mount=type=cache,target=/root/.cache \
  pip install tabulate chatdocs chatdocs[gptq] xformers

ENTRYPOINT chatdocs download && chatdocs add /app/docs && chatdocs chat -c /app
