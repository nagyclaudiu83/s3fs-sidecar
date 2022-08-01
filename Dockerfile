FROM ubuntu:22.04

RUN apt-get update \
    && apt-get install -y s3fs \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY run.sh /run.sh
ENTRYPOINT exec /run.sh
